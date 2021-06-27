# mpg regression
Mechacar <- read.csv("MechaCar_mpg.csv")
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mechacar)
summary(model)
# Suspension Coil Summary
suspension_coil <- read.csv("Suspension_Coil.csv")
summary(suspension_coil$PSI)

summary1 <- suspension_coil %>% summarize(
              Mean       = mean(PSI),
              Median     = median(PSI),
              Variance  = var(PSI),
              SD        = sd(PSI))
             
summary1
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot)
lot_summary1 <-  lot_summary %>% summarise(
                      Mean       = mean(PSI),
                      Median     = median(PSI),
                      Variance   = var(PSI),
                      SD         = sd(PSI))
lot_summary1


# t-test
ggplot(suspension_coil,aes(x=PSI)) + geom_density()
t.test(suspension_coil$PSI,mu=1500)

lot1 <- suspension_coil %>% filter(Manufacturing_Lot == "Lot1" )
lot2 <- suspension_coil %>% filter(Manufacturing_Lot == "Lot2" )
lot3 <- suspension_coil %>% filter(Manufacturing_Lot == "Lot3" )

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)