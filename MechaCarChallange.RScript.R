library(dplyr)
library(tidyverse)
read.csv(file="MechaCar_mpg.csv", check.names=F,stringsAsFactors=F)
MechaCar_mpg=read.csv(file="MechaCar_mpg.csv", check.names=F,stringsAsFactors=F)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))
read.csv(file="Suspension_Coil.csv", check.names=F,stringsAsFactors=F)
Suspension_Coil=read.csv(file="Suspension_Coil.csv", check.names=F,stringsAsFactors=F)
summarize_Suspension_Coil <- Suspension_Coil %>%
summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI))
View(summarize)  
summarize_Suspension_Coil_2 <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% 
summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI))
t.test(summarize_Suspension_Coil, mu = 1500)
t.test(summarize_Suspension_Coil_2, subset=Manufacturing_Lot%Lot1% mu = 1500)
