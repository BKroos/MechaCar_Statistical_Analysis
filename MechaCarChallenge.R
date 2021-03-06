library(tidyverse)
mecha_data <- read.csv(file='data/MechaCar_mpg.csv',check.names = F, stringsAsFactors = F )
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_data)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_data))
coil_data <- read.csv(file='data/Suspension_Coil.csv',check.names = F, stringsAsFactors = F )
total_summary <- coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
t.test(coil_data$PSI,mu=1500)
t.test(subset(coil_data$PSI, coil_data$Manufacturing_Lot == 'Lot1'), mu=1500)
t.test(subset(coil_data$PSI, coil_data$Manufacturing_Lot == 'Lot2'), mu=1500)
t.test(subset(coil_data$PSI, coil_data$Manufacturing_Lot == 'Lot3'), mu=1500)
