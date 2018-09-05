#Load function
source('RMOOvCWD.R')

#Input data frame
#Dims: nrows = number of sims, ncols = number of parameters to set in each
#If a parameter is not set, it will use whatever the default is in NetLogo
inp_vars = data.frame(
              cwd_region = c(rep('Linn County',3),rep('Chariton County',3)),
              #Names with dashes have to be surrounded w/backticks
              `seed-infection` = rep(c(5,7,10),2),
              myhm = rep(c(0.1,0.2,0.3),2),
              #IMPORTANT to preserve dashes/formatting
              check.names=FALSE,
              stringsAsFactors=FALSE
              )

inp_vars #View

#Specify output variables to save as character vector
#Note that the area/density vars are in terms of # of patches
#I'm not sure what the area of 1 patch is, would depend on the input GIS data
out_vars = c('cwd_region', 'seed-infection','d',
             'total_deer','deer_density','sexratio_monthly',
             'total_pctforest',
             #Overall prevalence
             'cwd_prev','new_infections','cwd_area',
             #Hunting mortality
             'mf6hm','ff6hm','mf12hm','ff12hm','myhm','fyhm','mahm','fahm',
             #Area of culling subregion
             'test_area',
             #Culling-area subregion mortality
             'mf12hm-sr','ff12hm-sr','myhm-sr','fyhm-sr','mahm-sr','fahm-sr'
             )


sim_output <- run_MOOvCWD(length_each=12, #Length of each sim (in months)
                          save_ticks = c(1,12), #Ticks to save (months 1 & 12 here)
                          input_frame=inp_vars,
                          output_vars=out_vars,
                          force_cores = 1 #If set to 1, will run in sequence instead
                          )

#TODO
#large starting n and starting radius
#culling area
