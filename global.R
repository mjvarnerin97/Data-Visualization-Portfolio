library(shiny)
library(tidyverse)

RiskData <- read.csv("CancerDevRisk.csv")

RiskData[RiskData == -1] <- NA
names(RiskData)[1] <- "Race"
names(RiskData)[2] <- "Age"
names(RiskData)[3] <- "Diagnosis10Yrs"
names(RiskData)[4] <- "Diagnosis20Yrs"
names(RiskData)[5] <- "Diagnosis30Yrs"
names(RiskData)[6] <- "DiagnosisEventually"