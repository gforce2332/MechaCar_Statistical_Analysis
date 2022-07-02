library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

#Perform linear regression, pass in all 6 variables and add the dataframe
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_mpg))
# p-value: 5.35e-11
# r-squared: 0.6825


# Import and read in the Suspension_Coil.csv file as a table
susp_coil <- read.csv(file='Suspension_Coil.csv',check.names = F, stringsAsFactors = F)
# Create a total_summary dataframe
total_summary <- susp_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
# Create a lot_summary dataframe to group each manufacturing lot
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))


# Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(susp_coil$PSI, mu = 1500)
# p-value = 0.06028

# Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
Lot1 = subset(susp_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(susp_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(susp_coil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu = 1500)
# p-value = 1
t.test(Lot2$PSI, mu = 1500)
# p-value = 0.6072
t.test(Lot3$PSI, mu = 1500)
# p-value = 0.04168