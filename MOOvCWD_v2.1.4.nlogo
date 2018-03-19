extensions [gis profiler]
globals
[
  ndd                                            ;counter-number of deer dispersing out of the model landscape
  vals1                                          ;list to store reporters for output file
  vals2                                          ;list to store reporters for output file
  vals3                                          ;list to store reporters for output file
  vals                                           ;list to store reporters for output file
  vals4
  vals5
  vals6
  vals7
  vals8
  tfamh                                          ;counter-fawn male deer hunted
  tymh                                           ;counter-yearling male deer hunted
  tamh                                           ;counter-adult male deer hunted
  tfafh                                          ;counter-fawn female deer hunted
  tyfh                                           ;counter-yearling female deer hunted
  tafh                                           ;counter-adult female deer hunted
  tfmt                                           ;counter-fawn male deer tested
  tymt                                           ;counter-yearling male deer tested
  tamt                                           ;counter-adult male deer tested
  tfft                                           ;counter-fawn female deer tested
  tyft                                           ;counter-yearling female deer tested
  taft                                           ;counter-adult female deer tested
  n_leaders_lost                                 ;counter-doe social group leaders losing their leadership status
  oldm                                           ;proportion of old males (above 229 when d = 1) in the adult male deer population
  oldf                                           ;proportion of old females (above 229 when d = 1) in the adult female deer population

  mcwd
  mycwd
  mfcwd
  fcwd
  fycwd
  ffcwd
  dcwdm                                         ;counter- CWD infected male adults in the harvest
  dcwdmy                                        ;counter- CWD infected male yearlings in the harvest
  dcwdmf                                        ;counter- CWD infected male fawns in the harvest
  dcwdf                                         ;counter- CWD infected female adults in the harvest
  dcwdfy                                        ;counter- CWD infected female yearlings in the harvest
  dcwdff                                        ;counter- CWD infected female fawns in the harvest
  tcwdm                                         ;counter- CWD infected male adults in the sample
  tcwdmy                                        ;counter- CWD infected male yearlings in the sample
  tcwdmf                                        ;counter- CWD infected male fawns in the sample
  tcwdf                                         ;counter- CWD infected female adults in the sample
  tcwdfy                                        ;counter- CWD infected female yearlings in the sample
  tcwdff                                        ;counter- CWD infected female fawns in the sample
  mcwd-sr
  mycwd-sr
  mfcwd-sr
  fcwd-sr
  fycwd-sr
  ffcwd-sr
  dcwdm-sr                                       ;counter- CWD infected male adults in the harvest
  dcwdmy-sr                                      ;counter- CWD infected male yearlings in the harvest
  dcwdmf-sr                                      ;counter- CWD infected male fawns in the harvest
  dcwdf-sr                                       ;counter- CWD infected female adults in the harvest
  dcwdfy-sr                                      ;counter- CWD infected female yearlings in the harvest
  dcwdff-sr                                      ;counter- CWD infected female fawns in the harvest
  tcwdm-sr                                       ;counter- CWD infected male adults in the sample
  tcwdmy-sr                                      ;counter- CWD infected male yearlings in the sample
  tcwdmf-sr                                      ;counter- CWD infected male fawns in the sample
  tcwdf-sr                                       ;counter- CWD infected female adults in the sample
  tcwdfy-sr                                      ;counter- CWD infected female yearlings in the sample
  tcwdff-sr
  tfamh-sr                                       ;counter-fawn male deer hunted in the subregion
  tymh-sr                                        ;counter-yearling male deer hunted in the subregion
  tamh-sr                                        ;counter-adult male deer hunted in the subregion
  tfafh-sr                                       ;counter-fawn female deer hunted in the subregion
  tyfh-sr                                        ;counter-yearling female deer hunted in the subregion
  tafh-sr                                        ;counter-adult female deer hunted in the subregion
  ;##11Mar18
  tfamc-sr                                       ;counter-fawn male deer culled in the subregion
  tymc-sr                                        ;counter-yearling male deer culled in the subregion
  tamc-sr                                        ;counter-adult male deer culled in the subregion
  tfafc-sr                                       ;counter-fawn female deer culled in the subregion
  tyfc-sr                                        ;counter-yearling female deer culled in the subregion
  tafc-sr                                        ;counter-adult female deer culled in the subregion
  ;
  tfmt-sr                                        ;counter-fawn male deer harvested in the subregion and tested
  tymt-sr                                        ;counter-yearling male deer harvested in the subregion andtested
  tamt-sr                                        ;counter-adult male deer harvested in the subregion and tested
  tfft-sr                                        ;counter-fawn female deer harvested in the subregion and tested
  tyft-sr                                        ;counter-yearling female deer harvested in the subregion and tested
  taft-sr                                        ;counter-adult female deer harvested in the subregion and tested
  hcwd
  tcwd
  totcwdd
  totcwdd-sr
  pdcwd                                           ;probability of detecting CWD
  op                                              ;observed prevalence
  hcwd-sr
  tcwd-sr
  pdcwd-sr
  op-sr
  tot_harvest
  tot_harvest-sr
  tmfh                                            ;counter-male fawn deer harvested
  tffh                                            ;counter-female fawn deer harvested
  tmyh                                            ;counter-male yearling deer harvested
  tfyh                                            ;counter-female yearling deer harvested
  test_area
  mf-sr
  ff-sr
  my-sr
  fy-sr
  ma-sr
  fa-sr
  d

  ;MOOvPOP( Agent-based model of deer population dynamics) generated deer population is used to initialize this model ('import-world'),
  ;hence global variables from MOOvPOP are also included.
  counter1 tgr tgroid tmgroid ttgroid twho
  dd dxp dxn dyp dyn
  output2
  region
  recommended_parameter_values
  post_harvest_density
  sexratio
  adultprop
  yearlingprop
]
patches-own
[
  forest-percent
  hrn                                             ;home-range number
  do                                              ;deer occupancy 0/1male/2female)
  border                                          ;identifying border patches
  dfp
  dh
  trialL
  patch-prev
]
breed [deers deer]
deers-own
[
  sex
  aim                                            ;age in months
  cwd
  cwdm                                           ;when a deer will die post cwd infection
  cwdi                                           ;when a deer will become infectious post cwd inf
  cwdc                                           ;when a deer will show clinical signs post cwd inf
  cwdpr                                          ;cwd progression in months
  momid                                          ;mother's who number
  gl                                             ;1 group leader; 0 follower
  groid
  gr                                             ;basically a leader attribute-group size excluding the leader (0 to n); if -1 the deer (gl = 0) is in a group; -2 if the deer is not in a group
  ml                                             ;male bachelor group leader ml = 1 otherwise 0
  mgroid                                         ;male bachelor group -2 at birth, -1 after dispersal and = who of leader when join group as adults
  nm                                             ;max number of matings allowed during rut (between 1 to 3 for female deer)
  anm                                            ;counter for actual number of matings
  ]
breed [t-patches t-patch]

to setup
  clear-all
  setup-landscape
  reset-ticks
  if subregion = TRUE [                                           ;v2.1 switch added for subregion
    ask patch patchx patchy[
      set trialL 1
      let test-patches patches in-radius-nowrap radius with [ do = 1 ]
      set test_area count test-patches
      ask test-patches [set trialL 1
        set pcolor yellow
      ]
      ]
  ]
  ask deers with [ groid > 0 ] [
      if distance deer groid > 3 [
        set groid -1 set gr -2
  ]]

  ask deers [
    set cwdm 20 + random 6
    set cwdi 3 + random 2
    set cwdc 15 + random 4
  ]

  ;Init CWD on landscape
  let inf-focus nobody
  ifelse subregion = TRUE                                   ;v2.1 after adding a switch for subregion
  [ set inf-focus patches with [ do = 1 and trialL = 1 ] ]
  [ set inf-focus patches with [ do = 1 ] ]
  ask n-of 1 inf-focus [;patches with [ do = 1 and trialL = 1 ] [
    set pcolor orange
    ask n-of seed-infection deers in-radius 1.5 with [ aim > 24 ][                        ;28Feb18 slider seed-infection added in version 2.1.1    ;version 2.1 changed from 3 infected deer to 10 infected deer
      set cwd 1
      set cwdpr (5 + random 6)
;      ask patch-here [
;        set pcolor red
;      ]
    ]
  ]

  ;set yearling-male-dispersal-rate 0.46
  file-open (word "cwdinfdy" cwd_region ".csv")                       ;28Feb18 Addition version 2.1.1
  file-print "seed-infection" file-print seed-infection
  file-print "AdultMale,YearlingMale,FawnMale,AdultFemale,YearlingFemale,FawnFemale,TotalPreHarvestPop,AdultMaleCWD+,YearlingMaleCWD+,FawnMaleCWD+,AdultFemaleCWD+,YearlingFemaleCWD+,FawnFemaleCWD+,TotalCWD+,AdultMaleHarvest,YearlingMaleHarvest,FawnMaleHarvest,AdultFemaleHarvest,YearlingFemaleHarvest,FawnFemaleHarvest,AdultMaleTested,YearlingMaleTested,FawnMaleTested,AdultFemaleTested,YearlingFemaleTested,FawnFemaleTested,CWDhuntedDeer,CWDtestedDeer,DetProb,ObsPrev,CWDArea";##7Mar18added CWDAera
  file-close
  if subregion = TRUE [                                        ;v2.1 switch added for subregion
    file-open (word "subregion" cwd_region ".csv")
    file-print "seed-infection" file-print seed-infection              ;28Feb18 Addition version 2.1.1
    file-print "AdultMale,YearlingMale,FawnMale,AdultFemale,YearlingFemale,FawnFemale,TotalPreHarvestPop,AdultMaleCWD+,YearlingMaleCWD+,FawnMaleCWD+,AdultFemaleCWD+,YearlingFemaleCWD+,FawnFemaleCWD+,TotalCWD+Subregion,AdultMaleHarvest,YearlingMaleHarvest,FawnMaleHarvest,AdultFemaleHarvest,YearlingFemaleHarvest,FawnFemaleHarvest,AdultMaleTested,YearlingMaleTested,FawnMaleTested,AdultFemaleTested,YearlingFemaleTested,FawnFemaleTested,CWDhuntedDeer,CWDtestedDeer,DetProb,ObsPrev"
    file-close
    file-open (word "subregion_tharvest" cwd_region ".csv")
    file-print "seed-infection" file-print seed-infection             ;28Feb18 Addition version 2.1.1
    file-print "SubregionArea,MaleFawnCullingRate,FemaleFawnCullingRate,MaleYearlingCullingRate,FemaleYearlingCullingRate,MaleAdultCullingRate,FemaleAdultCullingRate,TotalPreHarvestPopSubregion,TotalCWD+Subregion,AdultMaleCulled,YearlingMaleCulled,FawnMaleCulled,AdultFemaleCulled,YearlingFemaleCulled,FawnFemaleCulled,CWDarea,CWDhuntedDeer,CWDtestedDeer,ObsPrev"
    file-close
  ]
end
to setup-landscape
  if (cwd_region = "Boone County")[import-world "PostHarvestPopulationBooneCounty_v2.csv"]
  if (cwd_region = "Callaway County")[import-world "PostHarvestPopulationCallawayCounty_v2.csv"]
  if (cwd_region = "Carroll County")[import-world "PostHarvestPopulationCarrollCounty_v2.csv"]
  if (cwd_region = "Chariton County")[import-world "PostHarvestPopulationCharitonCounty_v2.csv"]
  if (cwd_region = "Cole County")[import-world "PostHarvestPopulationColeCounty_v2.csv"]
  if (cwd_region = "Cooper County")[import-world "PostHarvestPopulationCooperCounty_v2.csv"]
  ;if (cwd_region = "Crawford County")[import-world "PostHarvestPopulationCrawfordCounty_v2.csv"]
  if (cwd_region = "Franklin County")[import-world "PostHarvestPopulationFranklinCounty_v2.csv"]
  if (cwd_region = "Gasconade County")[import-world "PostHarvestPopulationGasconadeCounty_v2.csv"]
  if (cwd_region = "Knox County")[import-world "PostHarvestPopulationKnoxCounty_v2.csv"]
  if (cwd_region = "Linn County")[import-world "PostHarvestPopulationLinnCounty_v2.csv"]
  if (cwd_region = "Livingston County")[import-world "PostHarvestPopulationLivingstonCounty_v2.csv"]
  if (cwd_region = "Miller County")[import-world "PostHarvestPopulationMillerCounty_v2.csv"]
  if (cwd_region = "Moniteau County")[import-world "PostHarvestPopulationMoniteauCounty_v2.csv"]
  if (cwd_region = "Morgan County")[import-world "PostHarvestPopulationMorganCounty_v2.csv"]
  if (cwd_region = "Osage County")[import-world "PostHarvestPopulationOsageCounty_v2.csv"]
  if (cwd_region = "Putnam County")[import-world "PostHarvestPopulationPutnamCounty_v2.csv"]
  if (cwd_region = "Randolph County")[import-world "PostHarvestPopulationRandolphCounty_v2.csv"]
  if (cwd_region = "Schuyler County")[import-world "PostHarvestPopulationSchuylerCounty_v2.csv"]
  if (cwd_region = "Scotland County")[import-world "PostHarvestPopulationScotlandCounty_v2.csv"]
  if (cwd_region = "Shelby County")[import-world "PostHarvestPopulationShelbyCounty_v2.csv"]
  if (cwd_region = "St. Charles County")[import-world "PostHarvestPopulationStCharlesCounty_v2.csv"]
  if (cwd_region = "St. Louis County")[import-world "PostHarvestPopulationStLouisCounty_v2.csv"]
  if (cwd_region = "Sullivan County")[import-world "PostHarvestPopulationSullivanCounty_v2.csv"]
  if (cwd_region = "Warren County")[import-world "PostHarvestPopulationWarrenCounty_v2.csv"]
  if (cwd_region = "Washington County")[import-world "PostHarvestPopulationWashingtonCounty_v2.csv"]
  if (cwd_region = "MaconLinnCoreArea")[import-world "PostHarvestPopulationMaconLinnCoreArea_v2.csv"]
  if (cwd_region = "Seven County")[import-world "PostHarvestPopulationSevenCounty_v2.csv"]
  ask deers [ set hidden? TRUE ]
  random-seed new-seed

end
;------------------------------------------------------------
to-report doe-group-size-regulator
  report 6
end
to-report breeding-prop-female-fawns
  report 20
end
to-report yearling-male-dispersal-rate   ;dispersal rates for yearling males range between 46% to 80% (Long et al., 2005)
  report 0.46
end
to-report yearling-female-dispersal-rate
  report 0.22
end
to-report mean-female-dispersal-distance
 report 11
end
to-report stddev-dispersal-distance
 report 4
end
to-report mean-bachelor-group-size
 report (1 + random-normal 4 1)
end
to-report cwd_area
  report count patches with [ patch-prev > 0 ] ;pcolor = red]  ;AB 16Mar18
end

;------------------------------------------------------------
to go
  if (ticks = 60 or count deers with [cwd = 1 ] = 0) [
    stop
  ]

  set d remainder ticks 12 + 1 ;month. Do calculation just once per iteration

  ;if (d = 1 or d = 7) [
    ;ask deers [ ht ]                                             ;v2.1 deer ht in setup
    ;export-interface (word "CWD landscape month " ticks ".png")
    ;]

  ;let cwdpd count deers with [ cwd = 1 ]
  ;if (cwdpd = 0)[                                                                    ;version 2.1 model stops if there is no cwd+ deer in the model landscape
    ;stop
    ;user-message (word "No CWD+ deer in the model landscape!")
  ;]

  ask deers [
    set aim (aim + 1)                                                                 ;turtle procedure deer-grow
    deer-die
    if cwd = 1 [
      cwd-progression
    ]
  ]

  ;ask deers with [ cwd = 1 ] [
    ;cwd-progression
;    ask patch-here [
;      if (pcolor != yellow)[
;        set pcolor yellow
;        ]
;      ]
    ;]
;  ask patches with [ pcolor = yellow ][
;    if not any? deers-here with [ cwd = 1 ][
;      set pcolor scale-color green forest-percent 1 0
;      ;set plabel 0
;      ]
;    ]
;  ask patches with [ pcolor = yellow ] [
;    ;set plabel count deers-here with [cwd = 1]
;    ifelse count deers-here with [cwd = 1] > 5
;    [ set pcolor orange ]
;    [if count deers-here with [cwd = 1] > 10 [ set pcolor red ]]
;    ]
  if (d = 1) [
    set vals 0
    set vals1 0
    set vals2 0
    let deers-sr deers-on patches with [trialL = 1];subreg
    set mf-sr count deers-sr with [ sex = 1 and aim < 12.5 ]
    set ff-sr count deers-sr with [ sex = 2 and aim < 12.5 ]
    set my-sr count deers-sr with [ sex = 1 and aim = 21 ]
    set fy-sr count deers-sr with [ sex = 2 and aim = 21 ]
    set ma-sr count deers-sr with [ sex = 1 and aim > 30 ]
    set fa-sr count deers-sr with [ sex = 2 and aim > 30 ]
    let posthpop (mf + my + ma + ff + fy + fa)
    let posthpop-sr (mf-sr + my-sr + ma-sr + ff-sr + fy-sr + fa-sr)

    form-bachelor-groups

    set oldm precision (count deers with [ sex = 1 and aim >= 229 ] / ma) 3
    set oldf precision (count deers with [ sex = 2 and aim >= 229 ] / fa) 3

  ]

  if (d = 5) [

    ask deers with [ aim = 13 and gr = -1 ][
      yearlings-disperse
    ]

    ask deers with [ sex = 2 and aim > 12 and cwdpr < cwdc][ ;breeding females
      females-reproduce-group
    ]

  ]

  if (d = 10)[              ;turtle procedure: bachelor groups break down before the rutting season
    ask deers with [ ml = 1 ] [ set gr 0 ]
  ]

  if (d = 11) [

    ; Ask solitary males to disperse
    ask deers with [ sex = 1 and aim = 19 and gr = -2 and mgroid = -2 ] [
      if (random-float 1 < yearling-male-dispersal-rate) [
        set mgroid -1
        deer-mdisperse
        ]
      set mgroid -1
      ]

    ;===========deer mating submodel==========

;    let female-deers deers with [ sex = 2 ] ; doesn't currently do anything
;    ask female-deers [
;      set nm (1 + random 3)
;      set anm 0
;    ]

    ask deers with [ sex = 1 and aim > 18 and cwdpr < cwdc] [
      deer-mating
    ]

    ; Calculate values

    let deers-sr deers-on patches with [ trialL = 1 ]
    set mf-sr count deers-sr with [ sex = 1 and aim < 12.5 ]
    set ff-sr count deers-sr with [ sex = 2 and aim < 12.5 ]
    set my-sr count deers-sr with [ sex = 1 and aim = 19 ]
    set fy-sr count deers-sr with [ sex = 2 and aim = 19 ]
    set ma-sr count deers-sr with [ sex = 1 and aim > 30 ]
    set fa-sr count deers-sr with [ sex = 2 and aim > 30 ]

    ;Counts of infected deer by sex/ageclass
    let cwd-deers deers with [cwd = 1]
    set totcwdd count cwd-deers
    set mcwd mcwd + count cwd-deers with [ sex = 1 and aim > 21 ]
    set mycwd mycwd + count cwd-deers with [ sex = 1 and aim <= 21 and aim > 17 ]
    set mfcwd mfcwd + count cwd-deers with [ sex = 1 and aim <= 17 ]
    set fcwd mcwd + count cwd-deers with [ sex = 2 and aim > 21 ]
    set fycwd mycwd + count cwd-deers with [ sex = 2 and aim <= 21 and aim > 17 ]
    set ffcwd mfcwd + count cwd-deers with [ sex = 2 and aim <= 17 ]

    ;Counts of infected deer in subregion by sex/ageclass
    if subregion = true [
       let trialL-deers cwd-deers with [ trialL = 1 ]
       set totcwdd-sr count trialL-deers
       set mcwd-sr mcwd-sr + count trialL-deers with [ sex = 1 and aim > 21 ]
       set mycwd-sr mycwd-sr + count trialL-deers with [ sex = 1 and aim < 21 and aim > 17 ]
       set mfcwd-sr mfcwd-sr + count trialL-deers with [ sex = 1 and aim <= 17 ]
       set fcwd-sr mcwd-sr + count trialL-deers with [ sex = 2 and aim > 21 ]
       set fycwd-sr mycwd-sr + count trialL-deers with [ sex = 2 and aim < 21 and aim > 17 ]
       set ffcwd-sr mfcwd-sr + count trialL-deers with [ sex = 2 and aim <= 17 ]
    ]
    ;

    ;ask cwd-deers[
;    ask deers with [ cwd = 1 ][
;      ifelse (sex = 1)
;      [ ifelse (aim > 21)
;        [ set mcwd mcwd + 1 ]
;        [ ifelse (aim > 17)
;          [ set mycwd mycwd + 1 ]
;          [ set mfcwd mfcwd + 1 ]
;        ]
;      ]
;      [ ifelse (aim > 21)
;        [ set fcwd fcwd + 1 ]
;        [ ifelse (aim > 17)
;          [ set fycwd fycwd + 1 ]
;          [ set ffcwd ffcwd + 1 ]
;          ]
;        ]
;      if ([ trialL ] of patch-here = 1)[
;        ifelse (sex = 1)
;        [ ifelse (aim > 21)
;          [ set mcwd-sr mcwd-sr + 1 ]
;          [ ifelse (aim > 17)
;            [ set mycwd-sr mycwd-sr + 1 ]
;            [ set mfcwd-sr mfcwd-sr + 1 ]
;          ]
;        ]
;        [ ifelse (aim > 21)
;        [ set fcwd-sr fcwd-sr + 1 ]
;        [ ifelse (aim > 17)
;          [ set fycwd-sr fycwd-sr + 1 ]
;          [ set ffcwd-sr ffcwd-sr + 1 ]
;        ]
;        ]
;      ]
;
;    ]

    let phn-sr (mf-sr + my-sr + ma-sr + ff-sr + fy-sr + fa-sr)
    let phn (mf + my + ma + ff + fy + fa)
    set vals1 (list (ma) (my) (mf) (fa) (fy) (ff) (phn) (mcwd) (mycwd) (mfcwd) (fcwd) (fycwd) (ffcwd) (totcwdd))
    set vals3 (list (ma-sr) (my-sr) (mf-sr) (fa-sr) (fy-sr) (ff-sr) (phn-sr) (mcwd-sr) (mycwd-sr) (mfcwd-sr) (fcwd-sr) (fycwd-sr) (ffcwd-sr) (totcwdd-sr))
    set vals6 (list (test_area) (mf12hm-sr) (ff12hm-sr) (myhm-sr) (fyhm-sr) (mahm-sr) (fahm-sr) (phn-sr) (totcwdd-sr))
  ]

  if (d = 12) [

    ask deers [
      hunting-mortality
      ]

    if (ticks >= 0) [
      set hcwd (dcwdm + dcwdmy + dcwdmf + dcwdf + dcwdfy + dcwdff)
      set tcwd (tcwdm + tcwdmy + tcwdmf + tcwdf + tcwdfy + tcwdff)
      if (tcwd > 0) [
        set pdcwd 1
        ]
      set hcwd-sr (dcwdm-sr + dcwdmy-sr + dcwdmf-sr + dcwdf-sr + dcwdfy-sr + dcwdff-sr)
      set tcwd-sr (tcwdm-sr + tcwdmy-sr + tcwdmf-sr + tcwdf-sr + tcwdfy-sr + tcwdff-sr)
      if (tcwd-sr > 0) [
        set pdcwd-sr 1
        ]
      ;set peramht tamt / tamh
      ;set perafht taft / tafh
      set op precision (tcwd / (tamt + tymt + tfmt + taft + tyft + tfft)) 3
      set vals2 (list (tamh) (tymh) (tfamh) (tafh) (tyfh) (tfafh) (tamt) (tymt) (tfmt) (taft) (tyft) (tfft) (hcwd) (tcwd) (pdcwd) (op) (cwd_area));##7Mar18 added cwd-area
      set vals (sentence vals1 vals2)
      file-open (word "cwdinfdy" cwd_region ".csv")
      file-type first vals
      foreach but-first vals [ [ ?1 ] ->
        file-type "," file-type ?1
        ]
      file-print""
      file-close
      if subregion = TRUE [
        carefully [ set op-sr precision (tcwd-sr / (tamt-sr + tymt-sr + tfmt-sr + taft-sr + tyft-sr + tfft-sr)) 3 ] [ set op-sr 0 ]
        set vals4 (list (tamh-sr) (tymh-sr) (tfamh-sr) (tafh-sr) (tyfh-sr) (tfafh-sr) (tamt-sr) (tymt-sr) (tfmt-sr) (taft-sr) (tyft-sr) (tfft-sr) (hcwd-sr) (tcwd-sr) (pdcwd-sr) (op-sr))
        set vals5 (sentence vals3 vals4)
        file-open (word "subregion" cwd_region ".csv")
        file-type first vals5
        foreach but-first vals5 [ [ ?1 ] ->
          file-type "," file-type ?1
          ]
        file-print""
        file-close
        set vals7 (list (tamc-sr) (tymc-sr) (tfamc-sr) (tafc-sr) (tyfc-sr) (tfafc-sr) (cwd_area) (hcwd-sr) (tcwd-sr) (op-sr))
        set vals8 (sentence vals6 vals7)
        file-open (word "subregion_tharvest" cwd_region ".csv")
        file-type first vals8
        foreach but-first vals8 [ [ ?1 ] ->
          file-type "," file-type ?1
        ]
        file-print""
        file-close
      ]
      ]
    ]
  set ndd 0
  if (ticks < 59) [ ;119
    set tamh 0
    set tamt 0
    set tymh 0
    set tymt 0
    set tfamh 0
    set tfmt 0
    set tafh 0
    set taft 0
    set tfyh 0
    set tyft 0
    set tfafh 0
    set tfft 0
    set dcwdm 0
    set dcwdmy 0
    set dcwdmf 0
    set dcwdf 0
    set dcwdfy 0
    set dcwdff 0
    set tcwdm 0
    set tcwdmy 0
    set tcwdmf 0
    set tcwdf 0
    set tcwdfy 0
    set tcwdff 0
    set tot_harvest 0
    if subregion = TRUE [
      set mf-sr 0
      set my-sr 0
      set ma-sr 0
      set ff-sr 0
      set fy-sr 0
      set fa-sr 0
      set tamh-sr 0
      set tamt-sr 0
      set tamc-sr 0  ;##11Mar18
      set tymh-sr 0
      set tymt-sr 0
      set tymc-sr 0  ;##11Mar18
      set tfamh-sr 0
      set tfmt-sr 0
      set tfamc-sr 0  ;##11Mar18
      set tafh-sr 0
      set taft-sr 0
      set tafc-sr 0   ;##11Mar18
      set tyfh-sr 0
      set tyft-sr 0
      set tyfc-sr 0   ;##11Mar18
      set tfafh-sr 0
      set tfft-sr 0
      set tfafc-sr 0  ;##11Mar18
      set dcwdm-sr 0
      set dcwdmy-sr 0
      set dcwdmf-sr 0
      set dcwdf-sr 0
      set dcwdfy-sr 0
      set dcwdff-sr 0
      set tcwdm-sr 0
      set tcwdmy-sr 0
      set tcwdmf-sr 0
      set tcwdf-sr 0
      set tcwdfy-sr 0
      set tcwdff-sr 0
      set tot_harvest-sr 0
    ]
    ]
  set-current-plot "deer population"
  if (ticks = 0)[ clear-plot set-plot-pen-color blue set-plot-x-range 0 130 ]
  plotxy ticks count deers
;
;  ask patches with [ pcolor = yellow ][
;    if not any? deers-here with [ cwd = 1 ][
;      set pcolor scale-color green forest-percent 1 0
;      ;set plabel 0
;      ]
;    ]
;  ask patches [
;    if dh = -1 [stop]
;    ;set plabel count deers-here with [cwd = 1]
;    let cwds count deers-here with [cwd = 1]
;    ifelse cwds = 0
;    [ set pcolor scale-color green forest-percent 1 0 ]
;    [ ifelse cwds < 4
;      [set pcolor yellow ]
;      [ifelse cwds < 7
;        [ set pcolor orange ]
;        [ set pcolor red ]
;  ]]
;  ]

  ask patches [
    if dh = -1 [stop]
    let pop count deers-here
    let prev 0
    if pop > 0 [set patch-prev (count deers-here with [cwd = 1]) / pop]
    ifelse patch-prev > 0
    [set pcolor scale-color red patch-prev 1 0]
    [ set pcolor scale-color green forest-percent 1 0 ]
;    ifelse prev = 0
;    [ set pcolor scale-color green forest-percent 1 0 ]
;    [ ifelse prev < 0.05
;      [set pcolor yellow ]
;      [ifelse prev < 0.1
;        [ set pcolor orange ]
;        [ set pcolor red ]
;  ]]
  ]




  tick
end

to cwd-progression
  set cwdpr cwdpr + 1
  if (cwdpr >= cwdm) [ deer-die-cwd ]
  if ((cwdpr > cwdi) and (cwdpr < cwdc)) [                      ; infectious phase

    let local-deers deers in-radius-nowrap 3   ; immediate limitation to local deer
    let close-deers local-deers in-radius-nowrap 1.5  ;even closer

    ifelse (sex = 1)                                            ; infectious male deer
    [ ifelse (aim < 13)                                         ; infectious male fawn
      [ ;set twho who
        let lgroid groid
        let lmom momid
        ;set ttmomid momid
        ;set ttaim aim
        if (d <= 4)[

          ask close-deers with [ who = lmom and cwd = 0 ][ ; uninfected mom
            if (random-float 1 < (0.06 + random-float 0.08))[ ; probability of infection is 0.06-0.13
              set cwd 1
            ]
          ]

          ask close-deers with [ momid = lmom and aim < 13 and cwd = 0 ][ ; full siblings in cohort alive and uninfected
            ifelse (sex = 2)
            [ if (random-float 1 < (0.06 + random-float 0.08))[  ; female full sibling- probability of infection 0.06-0.13
              set cwd 1]]
            [ if (random-float 1 < (0.13 + random-float 0.14))[  ; male full sibling- probability of infection 0.13-0.26
              set cwd 1]]
           ]

          if (groid >= 0)[                                         ; if the infected deer is a group member

            ask local-deers with [ groid = lgroid and who != lmom and cwd = 0 ][  ; uninfected group members other than mom

              ifelse (momid = lmom)
              [ if (sex = 2 and aim > 20) [                        ; female half-siblings in group
                  if (random-float 1 < 0.07) [ set cwd 1 ]]]
;              [ if (sex = 2 and aim > 20 and aim < 25) [         ; 1/2 sibling female yearlings in group
;                  if (random-float 1 < 0.07)[                      ; probability of infection 0-0.06
;                    set cwd 1
;                  ]
;                ]
;                  if (sex = 2 and aim > 24) [                      ; adult female 1/2 sibling in group
;                    if (random-float 1 < 0.07)[                    ; probability of infection 0-0.06
;                      set cwd 1
;                      ]
;                    ]
;               ]

               [ ifelse (sex = 2 and aim > 20)                      ; female yearlings and adults in group, except mom and 1/2 siblings
                 [ if (random-float 1 < 0.07)[ set cwd 1 ]]                      ; probability of infection 0-0.06
                 [ if (aim < 13) [
                      ifelse (sex = 2)
                      [ if (random-float 1 < (0.06 + random-float 0.08))[ set cwd 1 ]]    ;female fawns other than full siblings, probability of infection 0.06-0.13
                      [ if (random-float 1 < (0.13 + random-float 0.14))[ set cwd 1 ]]   ;male fawns other than full siblings, probability of infection 0.13-0.26
                   ]
                 ]
               ]
            ]
         ]
;            let non-group-halfsib-neigh deers with [momid = ttmomid and sex = 2 and aim > 20 and aim < 25 and groid != tgroid and cwd = 0] in-radius 1.5   ;commented out 4Nov17
;            if any? non-group-halfsib-neigh [                             ; non-group yearling 1/2 sibling in the neighborhood
;              ask non-group-halfsib-neigh [
;                if (random-float 1 < random-float .1)[                    ; probability of infection 0 to 10 %
;                  set cwd 1
;                ]
;                ]
;              ]
;            let non-group-ad-neigh deers with [sex = 2 and aim > 25 and groid != tgroid and cwd = 0] in-radius 1.5
;            if any? non-group-ad-neigh [                                   ; non-group adults in the neighborhood
;              ask non-group-ad-neigh [
;                if (random-float 1 < random-float .1)[                     ; probability of transmission 0 to 10%
;                  set cwd 1
;                  ]
;                ]
;              ]
            ]
;          [let yearling-halfsib deers with [momid = ttmomid and sex = 2 and aim > 20 and aim < 25 and cwd = 0] in-radius 1.5
;            if any? yearling-halfsib [                                    ; fawn with solitary mom transmission to yearling 1/2 sibling in the neighborhood
;              ask yearling-halfsib [
;                if (random-float 1 < random-float .1)[                    ; probability of transmission 0 to 10%
;                  set cwd 1
;                  ]
;                ]
;              ]
;            ]
;          ]
        if (d = 7)[                                                        ; male fawn 3 months old
          ask close-deers with [ who = lmom and cwd = 0 ] [             ; uninfected mom
              ;if (random-float 1 < (0.7 + random-float 0.2))[             ; probability of infection 1
              set cwd 1
              ;]
          ]

          ask close-deers with [momid = lmom and aim = 3 and cwd = 0][ ;full sibs in cohort
              ;if (random-float 1 < (0.4 + random-float 0.2))[             ; probability of infection 1
              set cwd 1
              ;]
            ]

          if (lgroid >= 0)[ ;if in group
            ask local-deers with [ momid = lmom and sex = 2 and aim = 15 and groid = lgroid and cwd = 0 ][
                ; half siblings (f yearlings) in group
                if (random-float 1 < (0.06 + random-float 0.08))[           ; probability of infection 0.06-0.13
                  set cwd 1
                  ]
             ]
;            let halfsib-othergroup deers with [ momid = ttmomid and sex = 2 and aim = 15 and groid != tgroid and cwd = 0 ] in-radius 1.5
;            if any? halfsib-othergroup [
;              ask halfsib-othergroup [
;                if (random-float 1 < (.3 + random-float .2))[              ; probability of infection .3 to .5
;                  set cwd 1
;                  ]
;                ]
;              ]
            ]
        ]

        if (d > 7)[                                                         ; male fawn age 4 to 8 months
          ask close-deers with [ who = lmom and cwd = 0 ][                                              ; to mom
            if (d > 7 and d < 11)[
              if (random-float 1 < (0.13 + random-float 0.14))[ set cwd 1 ]          ; probability of infection 0.13-0.26 (non-rut season)
            ]
            if (d > 10)[
              if (random-float 1 < 0.07)[ set cwd 1 ]                                ; probability of infection 0 - 0.07 (rut season)
            ]
          ]

          ask close-deers with [ momid = lmom and aim < 13 and cwd = 0 ][
             ifelse (sex = 2)
             [ if (d > 7 and d < 11) [
                if (random-float 1 < (0.38 + random-float 0.27))[           ; female full sibling, probability of infection 0.38-0.64
                  set cwd 1
                ]
               ]
               if (d > 10)[
                if (random-float 1 < (0.06 + random-float 0.07))[           ; female full sibling, probability of infection 0.06-0.13
                  set cwd 1
                  ]
                ]]
              [ if (d > 7 and d < 11)[
                if (random-float 1 < (0.38 + random-float 0.27))[           ; prob of trans 0.38-0.64
                  set cwd 1
                ]
                ]
                if (d > 10)[
                  if (random-float 1 < (0.13 + random-float 0.14))[           ; male full sibling, probability of infection 0.13-0.26
                    set cwd 1
                    ]
                  ]
               ]
          ]

          if (groid >= 0) [
            ask local-deers with [ groid = lgroid and who != lmom and cwd = 0 ][
                ifelse (momid = lmom)
                [ if (sex = 2 and aim > 15 and aim < 19) [                   ; 1/2 sibling female yearling in group non-rut period
                  if (random-float 1 < (0.06 + random-float 0.08))[         ; probability of infection 0.06-0.13
                    set cwd 1
                    ]
                  ]
                  if (sex = 2 and aim > 18 and aim < 21) [
                    if (random-float 1 < 0.07)[                            ; probability of infection 0 to 0.06 during rut
                      set cwd 1
                      ]
                    ]
                  if (sex = 2 and aim > 27) [                               ; adult female 1/2 sibling in group
                    if (aim > 30 and aim < 33) [                            ; during rut
                      if (random-float 1 < 0.07)[                           ; probability of infection 0 - 0.06
                        set cwd 1
                        ]
                      ]
                    if (aim != 31 and aim != 32)[                           ; during nonrut
                      if (random-float 1 < (0.06 + random-float 0.08))[     ; probability of infection 0.06-0.13
                        set cwd 1
                        ]
                      ]
                    ]
                ]
                [ if (sex = 2 and aim > 15 and aim < 19) [                 ; other female yearlings in group non-rut period
                  if (random-float 1 < (0.06 + random-float 0.08))[        ; probability of infection 0.06-0.13
                    set cwd 1
                    ]
                  ]
                  if (sex = 2 and aim > 18 and aim < 21) [
                    if (random-float 1 < 0.07)[                            ; probability of infection 0 to 0.06 during rut
                      set cwd 1
                      ]
                    ]
                  if (sex = 2 and aim > 27) [                              ; other adult females in group
                    if (aim > 30 and aim < 33) [                           ; during rut
                      if (random-float 1 < 0.07)[                          ; probability of infection 0 - 0.06
                        set cwd 1
                        ]
                      ]
                    if (aim != 31 and aim != 32)[                          ; during nonrut
                      if (random-float 1 < (0.06 + random-float 0.08))[    ; probability of infection 0.06-0.13
                        set cwd 1
                        ]
                      ]
                    ]
;                  if (sex = 2 and aim > 20) [                             ; female yearlings and adults, except mom and 1/2 siblings
;                  if (random-float 1 < (0.06 + random-float 0.08))[
;                    set cwd 1                                             ; probability of infection 0.06-0.13 (nonrut)
;                    ]
;                  ]
                  if (aim < 13) [
                    ifelse (sex = 2)
                    [ ifelse (d > 10)                                      ; rut period
                      [if (random-float 1 < (0.06 + random-float 0.08))[   ; female fawns other than full siblings (rut period)
                        set cwd 1                                          ; probability of infection 0.06-0.13
                        ]
                      ]
                      [ if (random-float 1 < (0.13 + random-float 0.14))[  ; other female fawns ingroup nonrut period 0.13 to 0.26
                        set cwd 1
                        ]
                      ]
                    ]
                    [ if (random-float 1 < (0.13 + random-float 0.14))[    ; male fawns other than full siblings, probability of infection 0.13-0.26
                      set cwd 1
                      ]
                    ]
                  ]
                  ]
                ]
;              let halfsib-nongroup deers with [ momid = ttmomid and sex = 2 and aim > 20 and aim < 25 and groid != tgroid and cwd = 0 ] in-radius 1.5
;              if any? halfsib-nongroup [                                  ; non-group yearling 1/2 sibling in the neighborhood
;                ask halfsib-nongroup [
;                  if (random-float 1 < random-float 0.1)[                 ; probability of infection less than 0.1
;                    set cwd 1
;                    ]
;                  ]
;                ]
;              let nongroup-adults deers with [sex = 2 and aim > 25 and groid != tgroid and cwd = 0]
;              if any? nongroup-adults [                                   ; non-group adults in the neighborhood
;                ask nongroup-adults [
;                  if (random-float 1 < random-float 0.1)[                 ; probability of infection less than 0.1
;                    set cwd 1
;                    ]
;                  ]
;                ]
              ]
            ]
;          [ let halfsib deers with [ momid = ttmomid and sex = 2 and aim > 20 and aim < 25 and cwd = 0 ] in-radius-nowrap 1.5
;            if any? halfsib [                                             ; fawns with solitary mother, transmission to yearling 1/2 sibling in the neighborhood
;              ask halfsib [
;                if (random-float 1 < random-float .1)[                    ; probability of infection less than 0.1
;                  set cwd 1
;                  ]
;                ]
;              ]
;            ]
        ]
    [ if (d < 10)[                                                        ; cwd+ is yearling or adult MALE      http://community.deergear.com/the-hunt/bachelor-group-behavior/
      ifelse (mgroid < 0)
      [ let potgrm close-deers with [mgroid = -1 and cwd = 0]  ; yearling males in the neighborhood
        if any? potgrm [
          let count-potgrm 0
          ifelse (count potgrm > 6)
          [ set count-potgrm 5 ]
          [ set count-potgrm count potgrm ]
          ask n-of count-potgrm potgrm [                                   ; susceptible, solitary male yearlings in the neighborhood
            if (random-float 1 < 0.2)[                                     ;17Nov17 0.19-0.38 changed to 0-0.19; probability of infection 0.19-0.38
              set cwd 1
              ]
            ]
          ]
        ]
      [ ask local-deers with [ mgroid = [mgroid] of myself and cwd = 0] [                   ; susceptible male deer in bachelor group
          if (random-float 1 < (0.38 + random-float 0.21))[                ; probability of infection 0.38-0.58
            set cwd 1
            ]
          ]
        ]
      ]
    ]
    ]
    ;==========================================================FEMALE DEER===========================================================
    [ ifelse (aim >= 25)
      [ let lmom who
        let lgroid groid
        let lmymom momid
        ask close-deers with [ momid = lmom and cwd = 0 ][               ; all SUSCEPTIBLE offspring of the infected female deer
          if (aim = 3)[                                                      ; probability of infection fawns 3 months of age 0.77 to 1
            if (random-float 1 < (0.77 + random-float 0.24))[
              set cwd 1
              ]
            ]
          if (aim < 3)[
            if (random-float 1 < (0.77 + random-float 0.24))[                 ; probability of infection fawns 1,2 months of age: 0.77 to 1
              set cwd 1
            ]
          ]
          if (aim > 3 and aim < 7) [                                          ; fawns 4 ,5, 6 months old
            if (sex = 1)[                                                     ; male fawns 4-5 months old
              if (random-float 1 < (0.13 + random-float 0.14))[               ; probability of infection 0.13-0.26
                set cwd 1
              ]
            ]
            if (sex = 2)[                                                      ; female fawns 4, 5,6 months old
              if (random-float 1 < (0.26 + random-float 0.13))[                ; probability of infection 0.26-0.38
                set cwd 1
              ]
            ]
          ]
          if (aim > 6 and aim < 9)[                                            ; fawns 7, 8 months old (during the rutting period)
            if (sex = 1)[
              if (random-float 1 < 0.07)[
                set cwd 1
              ]
            ]
            if (sex = 2)[
              if (random-float 1 < (0.06 + random-float 0.08))[                 ; probability of infection 0.06-0.13
                set cwd 1
                ]
              ]
          ]
          if (aim > 8 and aim < 13)[                                            ; fawns 9,10,11,12 months old
            if (sex = 1) [
              if (random-float 1 < (0.06 + random-float 0.08))[                 ; probability of infection to male fawns 0.06-0.13
                set cwd 1
                ]
              ]
            if (sex = 2)[
              if (random-float 1 < (0.13 + random-float 0.14))[                  ; probability of infection to female fawns 0.13-0.26
                set cwd 1
              ]
            ]
          ]
          if (aim > 12 and aim < 25 and sex = 2)[                                ; only FEMALE yearlings
            ifelse (lgroid >= 0 and groid = lgroid)                              ; infected female is a group member, and her yearling daughter is in the same group
            [ if (d = 11 or d = 12)[                                             ; rut
              if (random-float 1 < .07) [
                set cwd 1
              ]
            ]
            if (d < 11 )[
              if (random-float 1 < (0.13 + random-float 0.14))[                   ; probability of infection 0.13-0.26
                set cwd 1
                ]
              ]
            ]
            [ if (random-float 1 < 0.14)[                                         ; non-group yearling daughter in the neighborhood probability of infection 0 to 0.13
              set cwd 1
              ]
            ]
          ]
          if (d < 5 and d > 6)[                                                   ; except during the peri-parturient period
            if (lgroid >= 0)[
              if (aim > 24 and sex = 2 and groid = lgroid)[                       ; adult female offspring who are group members
                if (random-float 1 < 0.14)[                                       ; probability of infection 0-0.13
                  set cwd 1
                  ]
                ]
              if (aim > 24 and sex = 2 and groid != lgroid)[                      ; infected mom is a group member, but the adult offspring is not
                if (random-float 1 < 0.07)[                                       ; probability of infection 0-0.06
                  set cwd 1
                  ]
                ]
              ]
            if (lgroid = -1)[                                                    ; infected mom is solitary
              if (aim > 24 and sex = 2)[                                         ; susceptible adult offspring is in the neighborhood
                if (random-float 1 < 0.07 )[                                     ; probability of infection 0-0.06
                  set cwd 1
                  ]
                ]
              ]
            ]
          ]
        if (d < 5 and d > 6)[                                                    ; except during the periparturient period
          ask close-deers with [ who = lmymom and cwd = 0 ][
            ifelse (groid >= 0 and groid = lgroid)                             ; susceptible mom in the same group as that of the infected female
              [ if (random-float 1 < 0.14)[                                      ; probability of infection 0-0.13
                set cwd 1
                ]
              ]
              [ if (random-float 1 < 0.07)[                                       ; probability of infection 0-0.06
                set cwd 1
                ]
              ]
            ]
          if (groid >= 0)[
            ask local-deers with [ groid = lgroid and cwd = 0 and who != lmymom and momid != lmom ][
                if (sex = 2) [
                  if (random-float 1 < (0.06 + random-float 0.08))[                ; probability of infection to other group members (excluding offspring and mom) 0.06 to 0.13
                    set cwd 1
                    ]
                ]
                if (sex = 1)[
                  if (aim > 3 and aim < 7) [                                       ; male fawns in group 4,5,6 nonrut period
                    if (random-float 1 < 0.14)[
                      set cwd 1
                    ]
                  ]
                  if (aim > 6 and aim < 13)[
                    if (random-float 1 < 0.07)[
                      set cwd 1
                    ]
                  ]
                ]
              ]
          ]
          ask close-deers with [ groid != lgroid and groid >= 0 and cwd = 0 and who != lmymom and momid != lmom ][
                ifelse (d = 10 or d = 11)
                [ if random-float 1 < 0.14[                                         ;18Nov17 changed from 0.06-0.13 to < 0.14
                  set cwd 1
                  ]
                ]
                [ if (random-float 1 < 0.07)[                                       ; probability of infection to deer in neighborhood (except offspring and mom) 0 to 0.06
                  set cwd 1
                  ]
                ]
              ]
            ]
        ]
        ;----------------------------------------------------Adult female END----------------------------------------------
        [ ifelse (aim > 12)                                                          ; if cwd+ is yearling female
          [ let lmom who
            let lgroid groid
            let lmymom momid
            let laim aim
            ask close-deers with [ momid = lmom and cwd = 0 ][                      ; all SUSCEPTIBLE offspring of the infected yearling female
              if (aim = 3)[                                                             ; probability of infection fawns 3 mo
                if (random-float 1 < (0.77 + random-float 0.24))[
                  set cwd 1
              ]
              ]
            if (aim <= 2)[
              if (random-float 1 < (0.77 + random-float 0.24))[                       ; probability of infection fawns 1,2 months of age: 0.77 to 1
                set cwd 1
                ]
              ]
            if (aim > 3 and aim < 7) [                                                ; fawns 4,5,6 months old (non rut)
              if (sex = 1)[                                                           ; male fawns 4-6 months old
                if (random-float 1 < (0.13 + random-float 0.14))[                     ; probability of infection 0.13-0.26
                  set cwd 1
                  ]
              ]
              if (sex = 2)[                                                           ; female fawns 4-6 months old
                if (random-float 1 < (0.26 + random-float 0.13))[                     ; probability of infection 0.26 -0.38
                  set cwd 1
                  ]
                ]
              ]
            if (aim > 6 and aim < 9)[                                                 ; fawns 7-8 months old (during the rutting period)
              if (sex = 1)[
                if (random-float 1 < 0.07)[
                  set cwd 1
                ]
              ]
              if (sex = 2)[
                if (random-float 1 < (0.06 + random-float 0.08))[                    ; probability of infection 0.06-0.13
                  set cwd 1
                  ]
                ]
            ]
            if (aim > 8 and aim < 13)[                                               ; fawns 8,9,10,11,12 months old
              if (sex = 1) [
                if (random-float 1 < (0.06 + random-float 0.08))[                    ; probability of infection to male fawns 0.06-0.13
                  set cwd 1
                  ]
                ]
              if (sex = 2)[
                if (random-float 1 < (0.13 + random-float 0.14))[                    ; probability of infection to female fawns 0.13-0.26
                  set cwd 1
                  ]
                ]
              ]
            ]
          if (d < 5 and d > 6)[
            ask close-deers with [ who = lmymom and cwd = 0 ][
                ifelse (groid >= 0 and groid = lgroid)                                ; susceptible mom in the same group as that of the infected yearling
                [ if (random-float 1 < (0.13 + random-float 0.14))[                   ; probability of infection 0.13-0.26
                  set cwd 1
                  ]
                ]
                [ if (random-float 1 < 0.14)[                                          ; probability of infection 0-0.13
                  set cwd 1
                  ]
                ]
              ]
            if (groid >= 0)[
              ask local-deers with [ groid = lgroid and cwd = 0 and who != lmymom and momid != lmom ][
                  ifelse (aim = laim)
                  [ ifelse (momid = lmymom)
                    [ if (d = 11 or d = 12)[                                            ; rut
                      if (random-float 1 < 0.07)[                                       ; full sibling yearling in group during rut
                        set cwd 1
                        ]
                      ]
                    if (d < 11)[
                      if (random-float 1 < (0.06 + random-float 0.21))[                 ; sibling yearlings in the group, probability of infection 0.06-0.26
                        set cwd 1
                        ]
                      ]
                    ]
                  [ if (random-float 1 < (0.06 + random-float 0.08))[                    ; other yearlings in the same group and cohort probability of infection 0.06-0.13
                    set cwd 1
                    ]
                  ]
                  ]
                  [ if (random-float 1 < (0.06 + random-float 0.08))[                   ; probability of infection to other group members (excluding offspring, yearlings/siblings and mom) 0.6-0.13
                    set cwd 1
                    ]
                  ]
                ]
              ask close-deers with [ groid != lgroid and groid >= 0 and cwd = 0 and who != lmymom and momid != lmom ][
                  if (d > 10)[
                    if (random-float 1 < 0.14)[                                         ; 18Non17 0.06-0.13 changed to 0 to 0.13
                      set cwd 1
                    ]
                  ]
                  if (d < 11 and d != 5 or d != 6)[
                    if (random-float 1 < 0.07)[
                      set cwd 1
                    ]
                  ]
                ]
              ]
            if (groid < 0)[                                                         ; if infected yearling is solitary
              ask close-deers with [ momid = lmymom and sex = 2 and aim = laim and cwd = 0 ][ ; sibling of infected solitary yearling in neighborhood
                  if (random-float 1 < 0.14)[                                        ; probability of infection 0 to 0.13
                    set cwd 1
                  ]
                ]
              ]
          ]
        ]
        ;----------------------------------------------------------- YEARLING FEMALE END
        ;----------------------------------------------------------- FAWN FEMALE BEGIN
        [ let lmom who
          let lgroid groid
          let lmymom momid
          let laim aim
          if (d <= 4)[
            ask close-deers with [ who = lmom and cwd = 0 ][
                if (random-float 1 < (0.13 + random-float 0.14))[; mom infected with a probability of 13-26%
                  set cwd 1
                ]
            ]
            ask close-deers with [ momid = lmymom and aim < 13 and cwd = 0 ][
              ifelse sex = 2
              [ if (random-float 1 < (0.13 + random-float 0.14))[ ; fullsib females infected with a probability of 13-26%
                  set cwd 1 ]]
              [ if (random-float 1 < (0.06 + random-float 0.08))[ ;fullsib males
                  set cwd 1 ]]
            ]

            if (lgroid >= 0)[
              ask local-deers with [ groid = lgroid and who != lmymom and cwd = 0 ][
                  ifelse (momid = lmymom)
                  [if (sex = 2 and aim > 20 and aim < 25) [                            ; 1/2 sibling yearling in group probability of inf 6%-13
                      if (random-float 1 < (0.06 + random-float 0.08))[
                        set cwd 1
                        ]
                      ]
                  if (sex = 2 and aim > 24) [                                          ; adult 1/2 sibling in group
                    if (random-float 1 < (0.06 + random-float 0.08))[                  ; 6-13%
                      set cwd 1
                    ]
                  ]
                  ]
                  [ if (sex = 2 and aim > 20) [                                        ; females, yearlings and adults, except mom and 1/2 siblings
                    if (random-float 1 < (0.06 + random-float 0.08))[
                      set cwd 1
                      ]
                    ]
                  if (aim < 13) [
                    ifelse (sex = 2)
                    [ if (momid != lmymom)[                                            ; female fawns other than full siblings
                        if (random-float 1 < (0.13 + random-float 0.14))[               ; 0.13-0.26
                          set cwd 1
                          ]
                        ]
                    ]
                    [ if (random-float 1 < (0.06 + random-float 0.08))[
                        set cwd 1
                        ]
                        ]
                      ]
                    ]
                ]
            ]
;              let nongroup-siblings deers with [ momid = ttmomid and sex = 2 and aim > 20 and aim < 25 and groid != tgroid and cwd = 0 ] in-radius 1.5
;              if any? nongroup-siblings [                                               ; non-group yearling 1/2 sibling in the neighborhood
;                ask nongroup-siblings [
;                  if (random-float 1 < (.2 + random-float .1))[
;                    set cwd 1
;                    ]
;                  ]
;                ]
;              ask deers in-radius-nowrap 1.5 with [ sex = 2 and aim > 25 and groid != lgroid and cwd = 0 ] ; non-group adults in the neighborhood
;                  if (d = 11 or d = 12)[ ;this is impossible
;                    if (random-float 1 < 0.07)[                                          ; 18Nov17 0.06-0.10 changed to 0-0.07
;                      set cwd 1
;                    ]
;                  ]
;                  if (d < 11)[
;                    if (random-float 1 < 0.07)[
;                      set cwd 1
;                      ]
;                  ]
;                  ]
;              ]
;            [ let halfsibs deers with [ momid = ttmomid and sex = 2 and aim > 20 and aim < 25 and cwd = 0]  in-radius 1.5
;              if any? halfsibs [                                                        ; fawn with solitary mother transmission to yearling 1/2 sibling in the neighborhood
;                ask halfsibs [
;                  if (random-float 1 < (.2 + random-float .1))[
;                    set cwd 1
;                    ]
;                  ]
;                ]
;              ]
;            ]
          ]
          if (d = 7)[
            ask close-deers with [ who = lmymom and cwd = 0 ][
                ;if (random-float 1 < (.7 + random-float .2))[
                  set cwd 1
                ;]
              ]
            ask close-deers with [ momid = lmymom and aim = 3 and cwd = 0 ][ ;fullsibs
                ;if (random-float 1 < (.4 + random-float .2))[
                  set cwd 1
                ;]
            ]

            if (lgroid >= 0)[
              ask close-deers with [ momid = lmymom and sex = 2 and aim = 15 and groid = lgroid and cwd = 0 ][ ;halfsib sisters                                                         ; yearling female halfsib in group 6-13%
                  if (random-float 1 < (0.06 + random-float 0.08))[
                    set cwd 1
                  ]
              ]
;              let nongroup-halfsibs deers with [ momid = ttmomid and sex = 2 and aim = 15 and groid != tgroid and cwd = 0 ] in-radius 1.5
;              if any? nongroup-halfsibs [
;                ask nongroup-halfsibs [                                                      ; nongroup halfsib in neighborhood
;                  if (random-float 1 < (0.3 + random-float 0.2))[
;                    set cwd 1
;                  ]
;                ]
;              ]
            ]
          ]
          if (d > 7)[
            ask close-deers with [ who = lmymom and cwd = 0 ][ ;mother deer
                if (d = 11 or d = 12)[
                  if (random-float 1 < (0.06 + random-float 0.08))[
                    set cwd 1
                  ]
                ]
                if (d < 11)[
                  if (random-float 1 < (0.26 + random-float 0.13))[
                    set cwd 1
                    ]
                  ]
            ]
            ask close-deers with [ momid = lmymom and aim < 13 and cwd = 0 ][ ;fullsibs
                if (sex = 1)[
                  if (aim > 3 and aim < 7)[
                    if (random-float 1 < (0.38 + random-float 0.29))[
                      set cwd 1
                      ]
                    ]
                  if (aim = 7 or aim = 8)[
                    if (random-float 1 < (0.06 + random-float 0.08))[
                      set cwd 1
                      ]
                    ]
                  ]
                if (sex = 2)[
                  if (aim > 3 and aim < 7)[
                    if (random-float 1 < (0.38 + random-float 0.29))[
                      set cwd 1
                      ]
                    ]
                  if (aim = 7 or aim = 8)[
                    if (random-float 1 < (0.13 + random-float 0.14))[
                      set cwd 1
                      ]
                    ]
                ]
              ]
            if (lgroid >= 0)[
              ask local-deers with [ groid = lgroid and who != lmymom and cwd = 0 ][ ;half-sibs
                  ;ifelse (momid = ttmomid)
                  if (sex = 2 and aim > 15 and aim < 21) [                                           ; 1/2 sibling yearling in group
                    if (d = 11 or d = 12)[
                      if (random-float 1 < 0.07)[
                        set cwd 1
                        ]
                      ]
                    if (d < 11)[
                      if (random-float 1 < (0.06 + random-float 0.08))[
                        set cwd 1
                        ]
                      ]
                  ]
                  if (sex = 2 and aim > 24) [                                                        ; adult 1/2 sibling in group
                    if (d = 11 or d = 12)[
                      if (random-float 1 < 0.07)[
                        set cwd 1
                        ]
                      ]
                    if (d < 11)[
                      if (random-float 1 < (0.06 + random-float 0.08))[
                        set cwd 1
                        ]
                      ]
                  ]
;                  [ if (sex = 2 and aim > 20) [                                                       ; females, yearlings and adults, except mom and 1/2 siblings
;                      if (random-float 1 < (0.2 + random-float 0.1))[
;                        set cwd 1
;                      ]
;                  ]
;                  ]
              if (aim < 13) [
                ifelse (sex = 2)
                [ if (momid != lmymom)[                                                                ; female fawns other than full siblings
                  if (random-float 1 < (0.13 + random-float 0.14))[
                    set cwd 1
                    ]
                  ]
                  ]
                [ if (random-float 1 < (0.06 + random-float 0.08))[
                  set cwd 1
                  ]
                  ]
                ]
;              let nongroup-halfsibs deers with [ momid = ttmomid and sex = 2 and aim > 20 and aim < 25 and groid != tgroid and cwd = 0 ] in-radius 1.5
;              if any? nongroup-halfsibs [                                                               ; non-group yearling 1/2 sibling in the neighborhood
;                ask nongroup-halfsibs [
;                  if (random-float 1 < (.2 + random-float .1))[
;                    set cwd 1
;                    ]
;                  ]
;                ]
;              let nongroup-adultneighbors deers with [ sex = 2 and aim > 25 and groid != tgroid and cwd = 0 ] in-radius 1.5
;              if any? nongroup-adultneighbors [                                                          ; non-group adults in the neighborhood
;                ask nongroup-adultneighbors [
;                  if (random-float 1 < random-float .1)[
;                    set cwd 1
;                    ]
;                  ]
;                ]
              ]
;            [ let halfsib deers with [ momid = ttmomid and sex = 2 and aim > 20 and aim < 25 and cwd = 0 ] in-radius 1.5
;              if any? halfsib [                                                                          ; fawn with solitary mother transmission to yearling 1/2 sibling in the neighborhood
;                ask halfsib [
;                  if (random-float 1 < (.2 + random-float .1))[
;                    set cwd 1
;                  ]
;                ]
;                ]
              ]
            ]
          ]
        ;=============================================================================================FAWN FEMALE END
        ]
      ]
    ]
end
to deer-reproduce
  let lmom who
  let lgroid groid
  let lgr -2
  if gr > -2 [ set lgr -1 ]
  ifelse (aim < 13.5)
  [ hatch-deers 1 [
    set aim 1
    ;set shape "deer"
    ;set color orange
    ;set size 1.5
    set gl 0
    set cwd 0
    set cwdm 20 + random 6
    set cwdi 3 + random 2
    set cwdc 15 + random 4
    set momid lmom
    set groid lgroid
    set gr lgr
    ifelse random 100 < 51
    [ set sex 1
      set mgroid -2 ]
    [ set sex 2 ]
    ]
    ]
  [ hatch-deers 2 [
    set aim 1
    ;set shape "deer"
    ;set color orange
    ;set size 1.5
    set gl 0
    set cwd 0
    set cwdm 20 + random 6
    set cwdi 3 + random 2
    set cwdc 15 + random 4
    set momid lmom
    ;set ownid who
    set groid lgroid
    set gr lgr
    ifelse random 100 < 51
    [ set sex 1
      set mgroid -2 ]
    [ set sex 2 ]
    ]
    ]
end
to deer-mdisperse                                                          ; turtle procedure: male yearling dispersal

  let ldd 0
  let ldxp 0 let ldyp 0
  let ldyn 0 let ldxn 0

  ask patch-here [
    if (dfp < .72) [
      let mdd (35.07 - (48.14 * (dfp)))                                    ; relationship between mean dispersal distance and proportion of forest cover to estimate the mean dispersal distance Long et al., 2005; Difenbach et al., 2008
      let sddd sqrt(e ^ (3.51 + (0.077 * mdd)))
      let lv ln (1 + (sddd ^ 2) / (mdd ^ 2))
      let lm ln mdd - (lv / 2)
      let ls sqrt lv
      set ldd (exp (random-normal lm ls) * 0.6214)                           ; this is in miles, 1 patch fd is 1 mile, so fd dd
      ]
    ]
  let counter-md 0
  rt random 360
  while [ counter-md < round ldd ]
  [ ask patch-here [
      set ldxp (pxcor)
      set ldyp (pycor)]
    fd 1
    set counter-md counter-md + 1
    ask patch-here [
      set ldxn (pxcor)
      set ldyn (pycor)
    ]
    if (abs(ldxn - ldxp) > 1 or abs(ldyn - ldyp) > 1)
    [ set ndd ndd + 1
      set cwd 0                                                             ; deer dispersing INTO the landscape are CWD-free.
      set cwdm 20 + random 6
      set cwdi 3 + random 2
      set cwdc 15 + random 4
      set momid 0 ]
    ]
  finalize-home-patch
end
to deer-fdisperse
  let counter-fd 0
  let ldxp 0
  let ldyp 0
  let ldxn 0 let ldyn 0
  rt random 360
  let ldd round (random-normal mean-female-dispersal-distance stddev-dispersal-distance)
  while [ counter-fd < ldd ]
  [ ask patch-here [
      set ldxp (pxcor)
      set ldyp (pycor) ]
    fd 1
    set counter-fd counter-fd + 1
    ask patch-here [
      set ldxn (pxcor)
      set ldyn (pycor)
    ]
    if (abs(ldxn - ldxp) > 1 or abs(ldyn - ldyp) > 1)[
      set ndd ndd + 1
      set cwd 0
      set cwdm 20 + random 6
      set cwdi 3 + random 2
      set cwdc 15 + random 4
      set momid 0
      ]
    ]
  finalize-home-patch
end
to finalize-home-patch

  let ldxp 0 let ldyp 0
  let ldxn 0 let ldyn 0

  let fhp 0
  ask patch-here [
    if (do != 1)[
      set fhp 1
    ]
    ]
  if (fhp > 0)[
    set ldxp (pxcor)
    set ldyp (pycor)
    move-to min-one-of patches with [ do = 1 ] [ distance myself ]
    set color blue
    ask patch-here [
      set ldxn (pxcor)
      set ldyn (pycor)
      ]
    if (abs(ldxn - ldxp) > 1 or abs(ldyn - ldyp) > 1)                                             ; dispersing deer goes out of the model landscape
    [ set ndd ndd + 1
      set cwd 0
      set cwdm 20 + random 6
      set cwdi 3 + random 2
      set cwdc 15 + random 4
      set momid 0
    ]
    ]
end

to new-group-formation
  let lgroid groid
  set groid -1
  set gr -2
  let lgr 0
  ask deers in-radius-nowrap 2 with [ momid = [who] of myself and aim = 1 ][
     set gr -2
     set groid -1
     set lgr (lgr + 1)
   ]

  ask deer lgroid[
    set gr (gr - (lgr + 1))
    ]
end

to deer-die-CWD
  let lgroid groid
  let lwho who

  ;----------------------------------------------------------------- fawns upto 6 months
  ifelse (aim < 6.5)
  [ ifelse (sex = 1)
    [
      if (gr = -1)[
        review-group-dynamics
      ]
      die
    ]
    [
      if (gr = -1)[
        review-group-dynamics
      ]
      die
    ]
    ]
  ;------------------------------------------------------------------ fawns 7 to 12 months
  [ ifelse (aim < 12.5)
    [ ifelse (sex = 1)
      [
        if (gr = -1)[
          review-group-dynamics
        ]
        die
      ]
      [
        if (gr = -1)[
          review-group-dynamics
        ]
        die
      ]
    ]
    ;------------------------------------------------------------------ yearlings 13 to 24 months
    [ ifelse (aim < 24.5)
      [ ifelse (sex = 1)
        [
          if (gr = -1) [
            review-group-dynamics
          ]
          die
        ]
        [ ;if female yearling
          ask deers in-radius-nowrap 2 with [ momid = [who] of myself and aim < 2.5 ][ ;ask my fawns to die
              review-group-dynamics
              die
          ]
            ifelse (gl > 0)[ new-group-leader ][ if (gr = -1)[review-group-dynamics] ] ;If I'm a leader, find a new one
            die
        ]
      ]
      ;----------------------------------------------------------------------- male 25 to 240 and more than 240
      [ ifelse (sex = 1)
        [ if (ml = 1)[
          let lmgroid mgroid
          ask deers in-radius-nowrap 3 with [mgroid = lmgroid] [ set mgroid -1 ]
          ]
          die
        ]
        ;--------------------------------------------------------------------- female 25 to 240
        [
            ask deers in-radius-nowrap 2 with [ momid = [who] of myself and aim < 2.5 ][
              review-group-dynamics
              die
            ]
            ifelse (gl > 0)[ new-group-leader ][ if (gr = -1)[review-group-dynamics] ]
            die
         ]
        ]
      ]
    ]
end
to deer-die

  let rn precision (random-float 1) 3

  ;------------------------------------------------------------- fawns upto 6 months
  ifelse (aim < 6.5)[

    let lmort mf6nhm
    if(sex = 2)[set lmort ff6nhm]
    if rn < lmort [
      if (gr = -1)[review-group-dynamics]
      die
    ]
  ]

  ;---------------------------------------------------------------  7 to 12 months
  [ ifelse (aim < 12.5)[

    let lmort mf12nhm
    if (sex = 2)[ set lmort ff12nhm ]
    if rn < lmort [
      if (gr = -1)[review-group-dynamics]
      if (sex = 1 and mgroid > 0)[review-bachelor-group]
      die
    ]
  ]

    ;------------------------------------------------------------- 13 to 24
  [ ifelse (aim < 24.5) [

    ifelse (sex = 1)[
      if rn < mynhm [
          if (gr = -1)[review-group-dynamics]
          if (mgroid > 0)[review-bachelor-group]
          die
        ]
      ]

    [ if rn < fynhm [
        ask deers in-radius-nowrap 2 with [ momid = [who] of myself and aim < 2.5 ][
          review-group-dynamics
          die
        ]
        ifelse (gl > 0)[ new-group-leader ][ if (gr = -1) [review-group-dynamics] ]
        die
       ]
     ]
   ]
   ;--------------------------------------------------------------- male 25 to 240 and more than 240
  [ ifelse (sex = 1)
        [ let lmort 0.8
          if aim < 240 [ set lmort precision (manhm - oldm) 3 ]
          if rn < lmort [
            ifelse ml = 1
            [ask deers with [ mgroid = [groid] of myself ][set mgroid -1]]
            [review-bachelor-group]
            die
          ]
         ]

   ;------------------------------------------------------------------- female 25 to 240
        [ let lmort 0.8
          if aim < 240 [ set lmort precision (fanhm - oldf) 3 ]
          if rn < lmort [
            ask deers in-radius-nowrap 2 with [ momid = [who] of myself and aim < 2.5 ][
              review-group-dynamics
              die
            ]
            ifelse (gl > 0)[ new-group-leader ][ if (gr = -1)[review-group-dynamics] ]
            die
          ]
        ]
      ]
    ]
  ]

end
;============================================================

to new-group-leader

 let lgroid groid
 let ngroid -1

 let my-group deers in-radius-nowrap 3 with [ groid = lgroid and who != lgroid]

 let pot-groupleaders my-group with [ aim > 18 and sex = 2 ]

 ifelse (any? pot-groupleaders)
  [ ifelse (any? pot-groupleaders with [ aim > 29 ])
    [ set ngroid ([who] of one-of pot-groupleaders with [aim > 29])]
    [ set ngroid ([who] of one-of pot-groupleaders) ]]
  [ let other-groupleaders-here deers-here with [ gl = 1 and gr < 3 and who != lgroid ]
    if (any? other-groupleaders-here)
    [ set ngroid ([who] of one-of other-groupleaders-here) ]
  ]

  ifelse ngroid = -1
  [ ask my-group [set gr -2 set groid -1 ] ]
  [ ask deer ngroid [
      set gl 1
      if gr < 0 [set gr 0]
      set gr (gr + count my-group)
    ]
    ask my-group [ set groid ngroid ]
  ]

  set n_leaders_lost (n_leaders_lost + 1)

end

;============================================================
to hunting-mortality-mf12
  if (gr = -1)[review-group-dynamics]
  ifelse (random-float 1 < %fawn-male-harvest-tested)
  [ if (cwd = 1)[
    set dcwdmf dcwdmf + 1
    set tcwdmf tcwdmf + 1
    ]
    set tfamh tfamh + 1
    set tfmt tfmt + 1
    if [ trialL ] of patch-here = 1 [          ;##11Mar18
      set tfamh-sr tfamh-sr + 1
      set tfmt-sr tfmt-sr + 1
    ]
    die
  ]
  [ if (cwd = 1)[
    set dcwdmf (dcwdmf + 1)
    ]
    set tfamh (tfamh + 1)
    if [ trialL ] of patch-here = 1 [ set tfamh-sr tfamh-sr + 1 ]     ;##11Mar18
    die
    ]
end
to hunting-mortality-mf12-sr
  if (gr = -1)[review-group-dynamics]
  if (cwd = 1)[
    set dcwdmf dcwdmf + 1
    set dcwdmf-sr dcwdmf-sr + 1
    set tcwdmf tcwdmf + 1
    set tcwdmf-sr tcwdmf-sr + 1
    ]
  set tfamh tfamh + 1
  set tfamc-sr tfamc-sr + 1     ;##11Mar18 changed from set tfamh-sr tfamh-sr + 1
  set tfmt tfmt + 1
  ;set tfmt-sr tfmt-sr + 1
  die
end
to hunting-mortality-ff12
  if (gr = -1)[review-group-dynamics]
  ifelse (random-float 1 < %fawn-female-harvest-tested)
  [ if (cwd = 1)[
    set dcwdff dcwdff + 1
    set tcwdff tcwdff + 1
    ]
    set tfafh tfafh + 1
    set tfft tfft + 1
    if [ trialL ] of patch-here = 1 [    ;##11Mar18
      set tfafh-sr tfafh-sr + 1
      set tfft-sr tfft-sr + 1
    ]
    die
  ]
  [if (cwd = 1)[
    set dcwdff (dcwdff + 1)
    ]
    set tfafh (tfafh + 1)
    if [ trialL ] of patch-here = 1 [ set tfafh-sr tfafh-sr + 1 ]    ;##11Mar18
    die
  ]
end
to hunting-mortality-ff12-sr
  if (gr = -1)[review-group-dynamics]
  if (cwd = 1)[
    set dcwdff dcwdff + 1
    set dcwdff-sr dcwdff-sr + 1
    set tcwdff tcwdff + 1
    set tcwdff-sr tcwdff-sr + 1
    ]
  set tfafh tfafh + 1
  set tfafc-sr tfafc-sr + 1   ;##11Mar18 changed from set tfafh-sr tfafh-sr + 1
  set tfft tfft + 1
  ;set tfft-sr tfft-sr + 1
  die
end
to hunting-mortality-my
  ifelse (random-float 1 < %yearling-male-harvest-tested)
  [ if (cwd = 1)[
    set dcwdmy dcwdmy + 1
    set tcwdmy tcwdmy + 1
    ]
    set tymh tymh + 1
    set tymt tymt + 1
    if [ trialL ] of patch-here = 1 [ ;##11Mar18
      set tymh-sr tymh-sr + 1
      set tymt-sr tymt-sr + 1
    ]
    die
    ]
  [ if (cwd = 1)[
    set dcwdmy (dcwdmy + 1)
    ]
    set tymh (tymh + 1)
    if [ trialL ] of patch-here = 1 [ set tymh-sr tymh-sr + 1 ]    ;##11Mar18
    die
  ]
end
to hunting-mortality-my-sr
  if (gr = -1)[review-group-dynamics]
  if (cwd = 1)[
    set dcwdmy dcwdmy + 1
    set dcwdmy-sr dcwdmy-sr + 1
    set tcwdmy tcwdmy + 1
    set tcwdmy-sr tcwdmy-sr + 1
    ]
  set tymh tymh + 1
  set tymc-sr tymc-sr + 1   ;##11Mar18 changed from set tymh-sr tymh-sr + 1
  set tymt tymt + 1
  ;set tymt-sr tymt-sr + 1
  die
end
to hunting-mortality-fy
  ifelse (gl > 0)
  [ new-group-leader]
  [ if (gr = -1)[review-group-dynamics]
  ]
  ifelse (random-float 1 < %yearling-female-harvest-tested)
  [ if (cwd = 1) [
    set dcwdfy (dcwdfy + 1)
    set tcwdfy (tcwdfy + 1)
    ]
    set tyfh tyfh + 1
    set tyft tyft + 1
    if [ trialL ] of patch-here = 1 [  ;##11Mar18
     set tyfh-sr tyfh-sr + 1
     set tyft-sr tyft-sr + 1
    ]
    die
  ]
  [if (cwd = 1)[
    set dcwdfy (dcwdfy + 1)
    ]
    set tyfh (tyfh + 1)
    if [ trialL ] of patch-here = 1 [ set tyfh-sr tyfh-sr + 1 ]    ;##11Mar18
    die
  ]
end
to hunting-mortality-fy-sr
  ifelse (gl > 0)
  [ new-group-leader]
  [ if (gr = -1)[review-group-dynamics]
  ]
  if (cwd = 1) [
    set dcwdfy dcwdfy + 1
    set dcwdfy-sr dcwdfy-sr + 1
    set tcwdfy tcwdfy + 1
    set tcwdfy-sr tcwdfy-sr + 1
  ]
  set tyfh tyfh + 1
  set tyfc-sr tyfc-sr + 1  ;##11Mar 18 changed from set tyfh-sr tyfh-sr + 1
  set tyft tyft + 1
  ;set tyft-sr tyft-sr + 1
  die
end
to hunting-mortality-ma
  if (ml = 1)[
    let lmgroid mgroid
    ask deers in-radius-nowrap 3 with [ mgroid = lmgroid and ml = 0 ][
      set mgroid -1
    ]
  ]
  ifelse (random-float 1 < %adult-male-harvest-tested)
  [ if (cwd = 1) [
    set dcwdm (dcwdm + 1)
    set tcwdm (tcwdm + 1)
    ]
    set tamh tamh + 1
    set tamt tamt + 1
    if [ trialL ] of patch-here = 1 [   ;##11Mar18
      set tamh-sr tamh-sr + 1
      set tamt-sr tamt-sr + 1
    ]
    die
    ]
  [ if (cwd = 1) [
    set dcwdm (dcwdm + 1)
    ]
    set tamh tamh + 1
    if [ trialL ] of patch-here = 1 [ set tamh-sr tamh-sr + 1 ]    ;##11Mar18
    die
    ]
end
to hunting-mortality-ma-sr
  if (gr = -1)[review-group-dynamics]
  if (cwd = 1)[
    set dcwdm dcwdm + 1
    set dcwdm-sr dcwdm-sr + 1
    set tcwdm tcwdm + 1
    set tcwdm-sr tcwdm-sr + 1
    ]
  set tamh tamh + 1
  set tamc-sr tamc-sr + 1   ;##11Mar18 changed from set tamh-sr tamh-sr + 1
  set tamt tamt + 1
  ;set tamt-sr tamt-sr + 1
  die
end
to hunting-mortality-fa
  if (gl = 1)[new-group-leader]
  if (gr = -1) [review-group-dynamics]
  ifelse (random-float 1 < %adult-female-harvest-tested)
  [ if (cwd = 1)[
    set dcwdf (dcwdf + 1)
    set tcwdf (tcwdf + 1)
    ]
    set tafh tafh + 1
    set taft taft + 1
    if [ trialL ] of patch-here = 1 [ ;##11Mar18
      set tafh-sr tafh-sr + 1
      set taft-sr taft-sr + 1
    ]
    die
    ]
  [ if (cwd = 1)[
    set dcwdf (dcwdf + 1)
    ]
    set tafh tafh + 1
    if [ trialL ] of patch-here = 1 [ set tafh-sr tafh-sr + 1 ]    ;##11Mar18
    die
    ]
end
to hunting-mortality-fa-sr
  if (gl = 1)[new-group-leader]
  if (gr = -1)[review-group-dynamics]
  if (cwd = 1)[
    set dcwdf (dcwdf + 1)
    set dcwdf-sr dcwdf-sr + 1
    set tcwdf (tcwdf + 1)
    set tcwdf-sr tcwdf-sr + 1
    ]
  set tafh tafh + 1
  set tafc-sr tafc-sr + 1   ;## 11Mar18 changed from set tafh-sr tafh-sr + 1
  set taft taft + 1
  ;set taft-sr taft-sr + 1
  die
end

to form-bachelor-groups

  if d = 1 [ ;Form groups

    let tmbg ((my + ma) / 4) ; appropriate # of group leaders
    let male-leaders deers with [ ml = 1 ]
    let diff (tmbg - count male-leaders)

    if (diff > 0)[ ;designate new group leaders to fill up slots
      let new-leaders n-of diff deers with [ sex = 1 and aim > 32 and ml = 0 ]
      ask new-leaders [
        set ml 1
        set mgroid who
      ]
      set male-leaders (turtle-set male-leaders new-leaders) ;add to leaders group
    ]

    ask male-leaders [ ;Fill out groups

      let lgroid mgroid

      let pot-groupmembers-here deers in-radius-nowrap 1.5 with [ mgroid = -1 and ml = 0 ]
      let group-members pot-groupmembers-here with [ mgroid = lgroid ]

      let to-fill max (list 0 (round mean-bachelor-group-size - count group-members)) ;needed members
      let possible-fills count pot-groupmembers-here

      if to-fill > 0 [ ;fill to target if possible
        let new-members n-of (min list to-fill possible-fills) pot-groupmembers-here
        ask new-members [
          set mgroid lgroid
        ]
        set group-members (turtle-set group-members new-members)
      ]

      set gr count group-members
      if gr <= 1 [ set ml 0 ]

    ]
  ]

end

to review-bachelor-group
  if (d = 1 or d > 10)[stop]
  if is-turtle? deer mgroid [
    ask deer mgroid [
      set gr (gr - 1)
      if gr <= 1 [ set ml 0 ]
    ]
  ]
end

;to bachelor-group-status
;
;  if (d > 1 and d < 10)[ ;bachelor group leaders assess their group membership
;    ask deers with [ml = 1][
;      set gr (count deers in-radius-nowrap 3 with [ mgroid = [mgroid] of myself ])
;      if (gr <= 1)[ set ml 0]
;      ]
;  ]
;
;end


to deer-mating
  let ter 1.5
  set anm 0
  ifelse (aim > 30)
  [ set nm (1 + random 6)
  ]
  [ set ter 2.5
    set nm (1 + random 3)
  ]

  ;;;;;;;;;;;;;;;;;;;;;;

  ;let female-deer-near-me deers in-radius-nowrap ter with [ sex = 2 and anm < nm and cwdpr < cwdc]   ;22Nov17
  let female-deer-near-me deers in-radius-nowrap ter with [ sex = 2 and cwdpr < cwdc] ;nm currently doesnt change
  let pmates (count female-deer-near-me)
  if (pmates > 0)[

    let lcwd cwd
    let avmates min list nm pmates ;available mates
    set anm avmates

    let exposures 0

    ask n-of avmates female-deer-near-me [
      if (cwd = 1 and lcwd = 0)[
        set exposures (exposures + 1) ; male is exposed once
      ]
      if (cwd = 0 and lcwd = 1)[ ; chance for female to be infected
        ;(0.2 + random-float 0.2))[     ;changed from 0.2 + random-float 0.2  to 0.41
        if (random-float 1 < 0.06)[ set cwd 1 ]
      ]
    ]

    if cwd = 0 and exposures > 0 [
      let cum-prob (1 - (1 - 0.41) ^ exposures ) ;cumulative prob of infection
      if random-float 1 < cum-prob [ set cwd 1 ]
    ]
  ]

;  I think the following code is more accurate, but it's slow.
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  let actual-mates n-of avmates female-deer-near-me
;    foreach [who] of actual-mates [ [mate] ->
;
;      if ([cwd] of deer mate = 0 and cwd = 1)[ ;male infected and female is not
;        ask deer mate [
;          ;(0.2 + random-float 0.2))[     ;changed from 0.2 + random-float 0.2  to 0.41
;          if (random-float 1 < 0.06)[set cwd 1]
;        ]
;      ]
;
;      if ([cwd] of deer mate = 1 and cwd = 0)[ ;male not infected and female is
;        if (random-float 1 < 0.41)[;(0.2 + random-float 0.2))[
;            set cwd 1
;        ]
;      ]
;      ;if infection status of m and f is the same, do nothing
;
;    ]
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


end

to review-group-dynamics                                             ; turtle procedure: doe social group leader loses leadership status if no group members left
  if (groid = -1 or gr = -2) [stop]
  if not is-turtle? deer groid [
    set groid -1
    set gr -2
    stop
  ]
  ask deer groid[
    set gr (gr - 1)
    if (gr <= 0)[
      set gl 0
      set groid -1
      set gr -2
      set n_leaders_lost (n_leaders_lost + 1)
      ]
    ]
end

to yearlings-disperse
  ;if d != 5 [stop]

  let disp-prob random-float 1

  ifelse sex = 1
    [ review-group-dynamics ;leave maternal group
      set gr -2 set groid -1
      if disp-prob < yearling-male-dispersal-rate [
        set mgroid -1 ; now elgible to join bachelor group
        deer-mdisperse ;disperse
      ]]
    [ if disp-prob < yearling-female-dispersal-rate [
         review-group-dynamics ;leave maternal group
         set gr -2 set groid -1
         deer-fdisperse
      ]]

end

to females-reproduce-group

  let grfis 0
  let lgroid groid
  let lgr gr

   if (aim = 13) [
     if (random 100 < 21)[
       if (lgroid >= 0 and is-turtle? deer lgroid)[
        ask deer lgroid [
           ifelse (gr > 4)
           [ set gr (gr - 1) ; leave group
             set grfis 1
           ]
           [ set gr (gr + 1)
           ]
       ]
       if (grfis = 1)[
         set groid -1
         set gr -2
       ]
       ]

       deer-reproduce

       ]
     ]

   if (aim > 24)[
     if (random 100 < 81)[
       ifelse (gl > 0)
       [ set gr (gr + 2)
         if (gr > 6)[
           let ngr 0
           let xgr gr - 6
           let group-members deers in-radius-nowrap 3 with [ groid = lgroid and sex = 2 and aim > 13 and gl = 0 ]
           ifelse (count group-members >= xgr)
           [ set ngr xgr ]
           [ set ngr count group-members ]
           ask n-of ngr group-members [
             new-group-formation
             ]
           ]
         ;set tgr -1
         ]
       [ ifelse (groid < 0 or not is-turtle? deer groid)
         [ if (aim > 36 and n_leaders_lost > 0)
           [ set gl 1
             set gr 2
             set groid who
             set n_leaders_lost (n_leaders_lost - 1)
             ]
           ]
         [ ask deer lgroid [
             ifelse (gr > 4)
             [ set gr (gr - 1)
               set grfis 1
             ]
             [ set gr (gr + 2)
             ]
         ]
         if (grfis = 1)[
           set groid -1
           set gr -2
           ]
         ]
         ]
       deer-reproduce
       ]
   ]
   ;---------------------------Join-group-------------------------------------------------------------------------
   if (gl = 1 and gr < 4)[
     let llgroid who
     let solitary-adult-females-here deers in-radius-nowrap 1.5 with [ sex = 2 and gr = -2 and aim >= 13 and cwdpr < cwdc ]
     let sd count solitary-adult-females-here
     if (sd > 0)[
       let sd1 0
       ifelse (sd > 2)
       [ set sd1 2 ]
       [ set sd1 1 ]
       ask n-of sd1 solitary-adult-females-here [
         let lmom who
         set groid llgroid
         set gr -1
         ask deer llgroid [ set gr (gr + 1) ]
         ask deers in-radius-nowrap 1.5 with [ momid = lmom and aim = 1 ][
           set groid llgroid
           set gr -1
           ask deer llgroid [ set gr (gr + 1) ]
             ]
           ]
         ]
     if (gr = 0)[
       set groid -1
       set gr -2
     ]
     ]

end

to hunting-mortality
  if (aim < 10)[
    ifelse (sex = 1)
    [ if (random-float 1 < mf12hm)[
      hunting-mortality-mf12
      ]
    if [ trialL ] of patch-here = 1[
      if (random-float 1 < mf12hm-sr)[
        hunting-mortality-mf12-sr
        ]
      ]
    ]
    [ if (random-float 1 < ff12hm)[
      hunting-mortality-ff12
      ]
    if [ trialL ] of patch-here = 1[
      if (random-float 1 < ff12hm-sr)[
        hunting-mortality-ff12-sr
        ]
      ]
    ]
    ]
  if (aim = 20)[
    ifelse (sex = 1)
    [ if (random-float 1 < myhm)[
      hunting-mortality-my
      ]
    if [ trialL ] of patch-here = 1[
      if (random-float 1 < myhm-sr)[
        hunting-mortality-my-sr
        ]
      ]
    ]
    [ if (random-float 1 < fyhm)[
      hunting-mortality-fy
      ]
    if [ trialL ] of patch-here = 1[
      if (random-float 1 < fyhm-sr)[
        ;set tgroid groid
        hunting-mortality-fy-sr
        ]
      ]
    ]
    ]
  if (aim > 30)[
    ifelse (sex = 1)
    [ if (random-float 1 < mahm)[
      hunting-mortality-ma
      ]
    if [ trialL ] of patch-here = 1[
      if (random-float 1 < mahm-sr)[
        hunting-mortality-ma-sr
        ]
      ]
    ]
    [ if (random-float 1 < fahm)[
      hunting-mortality-fa
      ]
    if [ trialL ] of patch-here = 1[
      if (random-float 1 < fahm-sr)[
        hunting-mortality-fa-sr
        ]
      ]
    ]
    ]

end

;to-report d
;  report remainder ticks 12 + 1
;end
to-report year
  report floor (ticks / 12) + 1
end
;to-report totcwdd-sr
;  report mcwd-sr + mycwd-sr + mfcwd-sr + fcwd-sr + fycwd-sr + ffcwd-sr
;end
to-report mf
  report count deers with [ sex = 1 and aim < 12.5 ]
end
to-report my
  report count deers with [ sex = 1 and aim > 12.5 and aim < 25 ]
end
to-report ma
  report count deers with [ sex = 1 and aim > 24 ]
end
to-report ff
  report count deers with [ sex = 2 and aim < 12.5 ]
end
to-report fy
  report count deers with [ sex = 2 and aim > 12.5 and aim < 25 ]
end
to-report fa
  report count deers with [ sex = 2 and aim > 24 ]
end
@#$#@#$#@
GRAPHICS-WINDOW
678
73
1046
430
-1
-1
12.0
1
10
1
1
1
0
1
1
1
0
29
0
28
0
0
1
ticks
30.0

BUTTON
459
10
523
43
Setup
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
216
624
286
669
total deer
count deers
17
1
11

MONITOR
215
526
287
571
male deer
count deers with [sex = 1]
17
1
11

MONITOR
216
575
286
620
female deer
count deers with [sex = 2]
17
1
11

SLIDER
145
55
278
88
mf6nhm
mf6nhm
0
.1
0.055
.001
1
NIL
HORIZONTAL

SLIDER
145
92
278
125
ff6nhm
ff6nhm
0
.1
0.055
.001
1
NIL
HORIZONTAL

SLIDER
145
130
279
163
mf12nhm
mf12nhm
0
1
0.05
.01
1
NIL
HORIZONTAL

SLIDER
146
167
279
200
ff12nhm
ff12nhm
0
1
0.05
.01
1
NIL
HORIZONTAL

SLIDER
286
208
423
241
myhm
myhm
0
1
0.25
.01
1
NIL
HORIZONTAL

SLIDER
287
246
423
279
fyhm
fyhm
0
1
0.15
.01
1
NIL
HORIZONTAL

SLIDER
146
206
279
239
mynhm
mynhm
0
1
0.01
.01
1
NIL
HORIZONTAL

SLIDER
147
244
278
277
fynhm
fynhm
0
1
0.0
0.01
1
NIL
HORIZONTAL

SLIDER
287
284
425
317
mahm
mahm
0
1
0.4
.01
1
NIL
HORIZONTAL

SLIDER
287
321
426
354
fahm
fahm
0
1
0.2
.001
1
NIL
HORIZONTAL

SLIDER
148
281
279
314
manhm
manhm
0
1
0.01
.01
1
NIL
HORIZONTAL

SLIDER
146
318
280
351
fanhm
fanhm
0
1
0.02
.01
1
NIL
HORIZONTAL

BUTTON
565
10
628
43
Go
go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

PLOT
39
529
199
662
deer population
months
deer
0.0
1000.0
0.0
15000.0
true
false
"plotxy ticks count deers" ""
PENS
"pen-0" 1.0 0 -5298144 true "" ""

SLIDER
289
54
419
87
mf6hm
mf6hm
0
1
0.0
.01
1
NIL
HORIZONTAL

SLIDER
288
94
420
127
ff6hm
ff6hm
0
1
0.0
.01
1
NIL
HORIZONTAL

SLIDER
287
133
421
166
mf12hm
mf12hm
0
1
0.05
.01
1
NIL
HORIZONTAL

SLIDER
288
169
423
202
ff12hm
ff12hm
0
1
0.02
.01
1
NIL
HORIZONTAL

MONITOR
508
742
644
787
CWD detection probability
pdcwd
0
1
11

MONITOR
677
19
734
64
Year
year
17
1
11

MONITOR
744
19
801
64
Month
remainder ticks 12 + 1
17
1
11

PLOT
211
671
371
791
Doe group size
NIL
NIL
2.0
15.0
0.0
10.0
true
false
"set-plot-x-range 2 15" ""
PENS
"default" 1.0 1 -16777216 true "" "histogram [gr + 1] of deers with [gl = 1]"

PLOT
39
669
199
789
Bachelor group size
NIL
NIL
0.0
15.0
0.0
10.0
true
false
"set-plot-x-range 0 15" ""
PENS
"default" 1.0 1 -16777216 true "" "histogram [gr] of deers with [ml > 0]"

MONITOR
379
693
502
738
CWD infected deer
count deers with [cwd = 1]
17
1
11

SLIDER
429
133
649
166
%fawn-male-harvest-tested
%fawn-male-harvest-tested
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
430
209
651
242
%yearling-male-harvest-tested
%yearling-male-harvest-tested
0
1
0.3
0.1
1
NIL
HORIZONTAL

SLIDER
432
282
653
315
%adult-male-harvest-tested
%adult-male-harvest-tested
0
1
0.4
0.1
1
NIL
HORIZONTAL

SLIDER
429
171
650
204
%fawn-female-harvest-tested
%fawn-female-harvest-tested
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
431
246
654
279
%yearling-female-harvest-tested
%yearling-female-harvest-tested
0
1
0.3
0.1
1
NIL
HORIZONTAL

SLIDER
432
318
653
351
%adult-female-harvest-tested
%adult-female-harvest-tested
0
1
0.4
0.1
1
NIL
HORIZONTAL

CHOOSER
7
10
138
55
cwd_region
cwd_region
"Boone County" "Callaway County" "Carroll County" "Chariton County" "Cole County" "Cooper County" "Franklin County" "Gasconade County" "Knox County" "Linn County" "Livingston County" "Miller County" "Moniteau County" "Morgan County" "Osage County" "Putnam County" "Randolph County" "Schuyler County" "Scotland County" "Shelby County" "St. Charles County" "St. Louis County" "Sullivan County" "Warren County" "Washington County" "MaconLinnCoreArea" "Seven County"
14

TEXTBOX
161
17
280
45
Non-hunting mortality\n(monthly rates)
11
15.0
1

TEXTBOX
307
19
406
45
Hunting mortality\n(annual rates)
11
15.0
1

TEXTBOX
38
65
131
83
Young male fawns
11
0.0
0

TEXTBOX
37
102
138
120
Young female fawns
11
0.0
1

TEXTBOX
37
140
123
158
Older male fawns
11
0.0
1

TEXTBOX
37
176
135
194
Older female fawns
11
0.0
1

TEXTBOX
37
214
110
232
Male yearlings
11
0.0
1

TEXTBOX
37
253
131
271
Female yearlings
11
0.0
1

TEXTBOX
39
291
98
309
Male adults
11
0.0
1

TEXTBOX
37
326
105
344
Female adults
11
0.0
1

MONITOR
380
741
502
786
CWD true prevalence
precision (count deers with [cwd = 1] / count deers) 3
17
1
11

MONITOR
510
694
644
739
CWD area (square miles)
cwd_area
17
1
11

PLOT
423
528
600
669
CWD prevalence
Months
True_prevalence
0.0
10.0
0.0
0.01
true
false
"" ""
PENS
"default" 1.0 0 -16777216 true "" "plot precision (count deers with [cwd = 1] / count deers) 3"

INPUTBOX
21
430
71
490
patchx
19.0
1
0
Number

INPUTBOX
78
431
128
491
patchy
11.0
1
0
Number

INPUTBOX
134
432
184
492
radius
1.0
1
0
Number

MONITOR
198
442
376
487
Subregion area (square miles)
test_area
17
1
11

SLIDER
389
383
524
416
mf12hm-sr
mf12hm-sr
0
1
0.8
0.01
1
NIL
HORIZONTAL

SLIDER
533
384
658
417
ff12hm-sr
ff12hm-sr
0
1
0.8
0.01
1
NIL
HORIZONTAL

SLIDER
388
423
524
456
myhm-sr
myhm-sr
0
1
0.8
0.01
1
NIL
HORIZONTAL

SLIDER
533
424
659
457
fyhm-sr
fyhm-sr
0
1
0.8
0.01
1
NIL
HORIZONTAL

SLIDER
387
463
524
496
mahm-sr
mahm-sr
0
1
0.8
0.01
1
NIL
HORIZONTAL

SLIDER
532
465
661
498
fahm-sr
fahm-sr
0
1
0.8
0.01
1
NIL
HORIZONTAL

TEXTBOX
167
383
364
421
Targeted culling in selected subregion
15
15.0
1

SWITCH
21
393
131
426
subregion
subregion
0
1
-1000

TEXTBOX
46
357
627
385
-------------------------------------------------------------------------------------
20
0.0
1

SLIDER
452
72
624
105
seed-infection
seed-infection
0
100
10.0
1
1
NIL
HORIZONTAL

TEXTBOX
38
506
641
546
------------------------------------------------------------------------------------
20
0.0
1

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

deer
false
0
Polygon -7500403 true true 195 210 210 255 195 240 180 195 165 165 135 165 105 165 75 165 72 211 60 210 60 180 45 150 45 120 30 90 45 105 180 105 225 45 225 60 270 90 255 90 225 90 180 150
Polygon -7500403 true true 73 210 86 251 75 240 60 210
Polygon -7500403 true true 45 105 30 75 30 90 45 105 60 120 45 120
Line -7500403 true 210 60 165 15
Line -7500403 true 225 60 255 45
Line -7500403 true 195 45 210 15
Line -7500403 true 255 45 255 30
Line -7500403 true 255 45 270 30
Line -7500403 true 195 15 180 30

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.0.2
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
<experiments>
  <experiment name="op_tp" repetitions="1" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>hcwd</metric>
    <metric>tcwd</metric>
    <enumeratedValueSet variable="mamonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <steppedValueSet variable="tp" first="0.01" step="0.01" last="0.1"/>
    <enumeratedValueSet variable="mfmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famonh">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamoh">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="npd">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymoh">
      <value value="0.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymoh">
      <value value="0.15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo12h">
      <value value="0.02"/>
    </enumeratedValueSet>
    <steppedValueSet variable="pertest" first="0.01" step="0.01" last="0.1"/>
    <enumeratedValueSet variable="mymonh">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12h">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="disp_rate">
      <value value="0.45"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famoh">
      <value value="0.2"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="1yearX100" repetitions="100" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>totcwdd</metric>
    <metric>hcwd</metric>
    <metric>tcwd</metric>
    <enumeratedValueSet variable="ffmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymoh">
      <value value="0.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famoh">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="npd">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamoh">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymoh">
      <value value="0.15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="tp">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymonh">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="pertest">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo12h">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famonh">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="disp_rate">
      <value value="0.45"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12h">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="prob_det_CWD" repetitions="100" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>pdcwd</metric>
    <enumeratedValueSet variable="ffmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymoh">
      <value value="0.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famoh">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="npd">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamoh">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymoh">
      <value value="0.15"/>
    </enumeratedValueSet>
    <steppedValueSet variable="tp" first="0.01" step="0.01" last="0.1"/>
    <enumeratedValueSet variable="mfmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymonh">
      <value value="0.01"/>
    </enumeratedValueSet>
    <steppedValueSet variable="pertest" first="0.01" step="0.01" last="0.1"/>
    <enumeratedValueSet variable="ffmo12h">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famonh">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="disp_rate">
      <value value="0.45"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12h">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="pdet_.001_.005_.01" repetitions="100" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>pdcwd</metric>
    <enumeratedValueSet variable="ffmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymoh">
      <value value="0.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famoh">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="npd">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamoh">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymoh">
      <value value="0.15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="tp">
      <value value="0.001"/>
      <value value="0.005"/>
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymonh">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="pertest">
      <value value="0.01"/>
      <value value="0.02"/>
      <value value="0.03"/>
      <value value="0.04"/>
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo12h">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famonh">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="disp_rate">
      <value value="0.45"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12h">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="samp_strategy_20141006" repetitions="100" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>pdcwd</metric>
    <enumeratedValueSet variable="ffmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymoh">
      <value value="0.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famoh">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12h">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamoh">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="disp_rate">
      <value value="0.45"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymoh">
      <value value="0.15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="npd">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="pertest">
      <value value="0.005"/>
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymonh">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famonh">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="tp">
      <value value="0.005"/>
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo12h">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="baseline_sampling_strategy" repetitions="1000" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>pdcwd</metric>
    <enumeratedValueSet variable="fymonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="disp_rate">
      <value value="0.45"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="pertest">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymoh">
      <value value="0.15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="tp">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famonh">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12h">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famoh">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamoh">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="npd">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymonh">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo12h">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymoh">
      <value value="0.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="revmod" repetitions="100" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>tcwd</metric>
    <metric>op</metric>
    <enumeratedValueSet variable="pertest">
      <value value="0.01"/>
      <value value="0.02"/>
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="tp">
      <value value="0.005"/>
      <value value="0.01"/>
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12h">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymoh">
      <value value="0.15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famonh">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamoh">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famoh">
      <value value="0.196"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="disp_rate">
      <value value="0.45"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="npd">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="%CWDlandscape">
      <value value="25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo12h">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymonh">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymoh">
      <value value="0.25"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="CL_MB" repetitions="100" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>tcwd</metric>
    <metric>op</metric>
    <enumeratedValueSet variable="%CWDlandscape">
      <value value="25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="npd">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famonh">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymoh">
      <value value="0.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mymonh">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymonh">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="disp_rate">
      <value value="0.45"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="pertest">
      <value value="0.01"/>
      <value value="0.02"/>
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mamoh">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo12h">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="famoh">
      <value value="0.196"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ffmo6h">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo12h">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mfmo6">
      <value value="0.06"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fymoh">
      <value value="0.15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="tp">
      <value value="0.005"/>
      <value value="0.01"/>
      <value value="0.02"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="experiment" repetitions="1" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>count turtles</metric>
    <enumeratedValueSet variable="manhm">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mf6nhm">
      <value value="0.055"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ff12hm">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="%adult-male-harvest-tested">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="%adult-female-harvest-tested">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fahm">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="%fawn-male-harvest-tested">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="patchx">
      <value value="13"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fynhm">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ff12hm-sr">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="patchy">
      <value value="28"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="myhm">
      <value value="0.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fanhm">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fyhm">
      <value value="0.15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mf12hm">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="%yearling-male-harvest-tested">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mf6hm">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fyhm-sr">
      <value value="0.15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="myhm-sr">
      <value value="0.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mf12hm-sr">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ff6nhm">
      <value value="0.055"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fahm-sr">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mahm-sr">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mf12nhm">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ff12nhm">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="%yearling-female-harvest-tested">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mahm">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ff6hm">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="radius">
      <value value="1.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="%fawn-female-harvest-tested">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mynhm">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="cwd_region">
      <value value="&quot;Boone County&quot;"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="10" repetitions="10" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <enumeratedValueSet variable="manhm">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mf6nhm">
      <value value="0.055"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ff12hm">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="%adult-male-harvest-tested">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="subregion">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="%adult-female-harvest-tested">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fahm">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed-infection">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="%fawn-male-harvest-tested">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="patchx">
      <value value="19"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fynhm">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ff12hm-sr">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="patchy">
      <value value="11"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="myhm">
      <value value="0.25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fanhm">
      <value value="0.02"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fyhm">
      <value value="0.15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mf12hm">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="%yearling-male-harvest-tested">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mf6hm">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fyhm-sr">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="myhm-sr">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mf12hm-sr">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ff6nhm">
      <value value="0.055"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="fahm-sr">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mahm-sr">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mf12nhm">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="%yearling-female-harvest-tested">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ff12nhm">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mahm">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ff6hm">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="radius">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="%fawn-female-harvest-tested">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mynhm">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="cwd_region">
      <value value="&quot;Osage County&quot;"/>
    </enumeratedValueSet>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
