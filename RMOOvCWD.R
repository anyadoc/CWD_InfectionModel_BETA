########################################################
## Function to control MOOvCWD simulations in NetLogo ##
########################################################

#Dependencies
#Java (needed for NetLogo anyway, if on Linux)
#system('sudo apt install default-jdk')
#system('java -version')
#install.packages('rJava')
#install.packages('RNetLogo')

#May need to manually set system paths to java install, e.g. below:
#Probably need to set the vars as sudo
#system('export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre')
#system('export LD_LIBRARY_PATH=$JAVA_HOME/jre/lib/amd64:$JAVA_HOME/jre/lib/amd64/client')
#system('sudo R CMD javareconf')
#https://stackoverflow.com/questions/12872699/error-unable-to-load-installed-packages-just-now

#Netlogo model files should be in current working directory

#NOTE: running this script, particularly in parallel, demands a lot of RAM.
#This appears to mainly be a result of a lot of rJava/RNetLogo overhead.

library(parallel)

run_MOOvCWD <- function(nreps=1,length_each=5,
                        input_frame=NULL,output_vars='ticks',
                        nl_path=NULL, force_cores=NULL){

  #Setup-----------------------------------------------------------------------

  #Model start time
  start_time <- Sys.time()

  #Path to NetLogo installation based on OS
  if(is.null(nl_path)){
    if(Sys.info()[['sysname']] == "Windows"){
      nl_path <- 'C:/Program Files (x86)/Netlogo 5.2.0'
    } else if(Sys.info()[['sysname']] == "Linux"){
      nl_path <- paste(system('dirname $(readlink -f $(which netlogo))', 
                        intern=TRUE),'/app',sep='')}
  }
  nl_jarname <- grep('^netlogo-',list.files(nl_path),value=TRUE)

  #Get path to model
  model_path <- paste(getwd(),'/MOOvCWD_v2.1.4.nlogo',sep='')

  #Setup CPU cores to use
  if(!is.null(force_cores)){n_cores <- force_cores
  } else {n_cores <- detectCores()}

  #----------------------------------------------------------------------------

  #Utility functions-----------------------------------------------------------

  #Java garbage cleanup function
  jgc <- function(){
    .jcall("java/lang/System", method = "gc")
  }

  #----------------------------------------------------------------------------

  #NetLogo run functions-------------------------------------------------------

  #Internal function to setup NetLogo in each parallel subprocess
  .init_NL <- function(i) {
    #Initialize JVM with plenty of RAM
    ram_max = 1000
    options( java.parameters = paste("-Xmx",ram_max,"m",sep="") )
    library(rJava)
    .jinit()
    library(RNetLogo)
    NLStart(nl_path, nl.jarname=nl_jarname, gui=FALSE)
    NLLoadModel(model_path)
  }

  .run_NL <- function(i,input=NULL){

    #Garbage collection in R and Java
    gc()
    jgc()

    #Set input initial values
    if(!is.null(input)){
      input_row <- input[i,]
      for (j in 1:length(input)){
        NLCommand(paste('set',names(input_row[j]),input_row[j]))
      }
    }

    #Setup NetLogo model
    NLCommand("setup")

    #Run and save output
    out <- NLDoReport(length_each, 'go', output_vars, 
                       as.data.frame=TRUE, df.col.names=output_vars)
    return(out)

  }

  .stop_NL <- function(i){NLQuit()}

  #----------------------------------------------------------------------------

  #Run in parallel-------------------------------------------------------------

  #Initialize NetLogo in each core
  cl <- makeCluster(n_cores)
  on.exit(stopCluster(cl))
  clusterExport(cl = cl, ls(), envir = environment())
  invisible(parLapply(cl, 1:n_cores, .init_NL, nl_path, model_path))
  on.exit(closeAllConnections())
  
  #Run simulations
  sim <- clusterApply(cl=cl,x=1:nreps,fun=.run_NL,input=input_frame)
  
  #Stop/cleanup
  invisible(parLapply(cl, 1:n_cores, .stop_NL))
  stopCluster(cl)
  closeAllConnections()
  gc()

  #End time
  end.time <- Sys.time() 
  time <- round(as.numeric(end.time-start.time,units="mins"),digits=3)
  
  time
  #out$runtime.minutes <- time

  return(sim)

}
