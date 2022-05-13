# Deliverable 1
library(dplyr)
MechaCar <- read.csv("C:/Users/Owner/ucb/MechaCar_Statistical_Analysis/MechaCar_mpg.csv")
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=MechaCar)
summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=MechaCar))

# Deliverable 2
Suspension_Coil <- read.csv("C:/Users/Owner/ucb/MechaCar_Statistical_Analysis/Suspension_Coil.csv")
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3

shapiro.test(log10(Suspension_Coil$PSI))
t.test(Suspension_Coil$PSI, mu=1500)

Lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
t.test(Lot1$PSI, mu=1500)
Lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
t.test(Lot2$PSI, mu=1500)
Lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")
t.test(Lot3$PSI, mu=1500)
