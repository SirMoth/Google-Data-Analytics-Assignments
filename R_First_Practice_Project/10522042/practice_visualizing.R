install.packages("Tmisc")
library(Tmisc)
data(quartet)
View(quartet)

quartet %>%
  group_by(set) %>%
  summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))

ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method=lm,se=FALSE) + facet_wrap(quartet$set)

install.packages('datasauRus')
library('datasauRus')

ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3)

install.packages("SimDesign")
library(SimDesign)

actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)
bias(actual_temp, predicted_temp)
