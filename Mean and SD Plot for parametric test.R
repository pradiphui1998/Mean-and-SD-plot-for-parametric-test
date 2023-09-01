## Calling the library
library(ggplot2)
library(Rmisc)
data("CO2")
## Finding the summary of required variables.
tgc<-summarySE(data=CO2,measurevar = "uptake",groupvars = c("Treatment"))
tgc


## Plotting the data using ggplot function.
p<-ggplot(tgc,aes(x=Treatment,y=uptake))+geom_errorbar(aes(ymin=uptake-sd,ymax=uptake+sd),width=0.2)
p
## Adding the point s and labeling the axis.
p+geom_point()+labs(title = "Mean and SD plot",subtitle = "Prepare by Pradip",x="Treatment",y="Pptake ()-Mean+/- SD")

