library(dplyr)
library(tidyverse)

#Deliverable 1
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors =F)

linearReg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)

summary(linearReg)

view(mecha_car_mpg)


#Deliverable 2
suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD=sd(PSI))

suspension_mean <- suspension_coil %>% summarize(Mean = mean(PSI))
suspension_median <- suspension_coil %>% summarize(Median = median(PSI))
suspension_var <- suspension_coil %>% summarize(Variance = var(PSI))
suspension_sd <- suspension_coil %>% summarize(SD = sd(PSI))


suspension_df = data.frame(suspension_mean,suspension_median,suspension_var,suspension_sd)
View(suspension_df)

total_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#Deliverable 3

t.test(suspension_coil$PSI,  alternative=c("two.sided"), mu=1500, paired= FALSE, conf.level=0.95)


lot1 <- subset(suspension_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,  alternative=c("two.sided"), mu=1500, paired= FALSE, conf.level=0.95)
t.test(lot2$PSI,  alternative=c("two.sided"), mu=1500, paired= FALSE, conf.level=0.95)
t.test(lot3$PSI,  alternative=c("two.sided"), mu=1500, paired= FALSE, conf.level=0.95)
