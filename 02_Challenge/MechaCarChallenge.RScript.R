#load relevant libraries
library(tidyverse)

# Load in MechaCar_mpg dataset
MechaCar <- read.csv(file="MechaCar_mpg.csv")

#create linear model
mpgLM<-lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data=MechaCar)
summary(mpgLM)

#load the suspension coil dataset
SuspensionCoil <- read.csv(file="Suspension_Coil.csv")

#Generate summary table for the PSI variable
summarizePSI <- SuspensionCoil %>% summarize(Number=n(), Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation=sd(PSI))

# One sample T-Test on suspension coil
t.test(SuspensionCoil$PSI, mu=1500)
