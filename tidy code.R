library(tidyverse)
require(tidyverse)

library(readxl)
require(readxl)

setwd("C:/Users/micge/Desktop/project/data")

getwd()

excel_sheets("abalone data.xlsx")


abdat<-read_xlsx("abalone data.xlsx", sheet= "All Trial pH & Temp ")
head(abdat)  
attach(abdat)
detach(abdat)
abdat
names(abdat)


abdat %>% 
filter(Circulation == "Raceway")
select() 
 
attach(abdat)         
detach(abdat) 

range("Abalone 2.1 (Prob 1) - Temperature   (°C)")
summary(abdat)
 

abdat<-read_xlsx("abalone data.xlsx", sheet= "All Trial pH & Temp ", range = "B1:I2711")

  pivot_longer(cols = c("Abalone2.1(Prob 1)-Temperature(°C)",
                        "Abalone2.1(Prob 1)-pH",             
                        "Abalone2.2(Prob 2)-Temperature(°C)",
                        "Abalone2.2(Prob 2)-pH",             
                        "Abalone3.1(Prob 3)-Temperature(°C)",
                        "Abalone3.1(Prob 3)-pH" ), names_to = "variable", values_to = "value") 
 
class(abdat)
abdat
unclass(Circulation)
abdat$Circulation=as.double(abdat$Circulation)
unclass(Circulation)
summary(abdat)
group_by(Circulation)
abdat

library(ggplot2)
require(ggplot2)

ggplot() +
    geom_boxplot(aes(y = value, x = Site)) +
    theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
    facet_wrap(vars(variable), scales = "free")
     