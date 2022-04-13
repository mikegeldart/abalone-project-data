rm(list=ls())
setwd("C:/Users/micge/Desktop/project/data")

getwd()

library(tidyverse)
require(tidyverse)

library(readxl)
require(readxl)

library(dplyr)
require(dplyr)


excel_sheets("abalone data.xlsx")


abdat<-read_xlsx("abalone data.xlsx", sheet= "All Trial pH & Temp ")

head(abdat)  

attach(abdat)
detach(abdat)
abdat

names(abdat)

summary(abdat)
 

abdat<-read_xlsx("abalone data.xlsx", sheet= "All Trial pH & Temp ", range = "B1:I1711")

names(abdat)

##data is tidy
longabdat<-read_xlsx("abalone data.xlsx", sheet= "All Trial pH & Temp ", range = "B1:I1711") %>%
  pivot_longer(cols = c("AbaloneT1",   "AbalonePH1",  "AbaloneT2",   "AbalonePH2", 
                        "AbaloneT3",   "AbalonePH3" ),
               names_to = "variable", values_to = "value") %>%

 
abdat

unclass(Circulation)

abdat$Circulation=as.character(abdat$Circulation)

unclass(Circulation)

summary(abdat)
abdat






