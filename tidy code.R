
setwd("C:/Users/micge/Desktop/project/data")

getwd()

library(tidyverse)
require(tidyverse)

library(readxl)
require(readxl)


excel_sheets("abalone data.xlsx")


abdat<-read_xlsx("abalone data.xlsx", sheet= "All Trial pH & Temp ")

head(abdat)  

attach(abdat)

abdat

names(abdat)

summary(abdat)
 

abdat<-read_xlsx("abalone data.xlsx", sheet= "All Trial pH & Temp ", range = "A1:I1711")



pivot_longer(cols = c("Abalone2.1(Prob 1)-Temperature(°C)",
                        "Abalone2.1(Prob 1)-pH",             
                        "Abalone2.2(Prob 2)-Temperature(°C)",
                        "Abalone2.2(Prob 2)-pH",             
                        "Abalone3.1(Prob 3)-Temperature(°C)",
                        "Abalone3.1(Prob 3)-pH" ) 
 

abdat

unclass(Circulation)

attach(abdat)
detach(abdat)

abdat$Circulation=as.character(abdat$Circulation)
unclass(Circulation)

summary(abdat)



library(ggplot2)
require(ggplot2)

names(abdat)

plot(temporal, Aba)
length(abalone)