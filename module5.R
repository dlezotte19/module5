medData <- data.frame(
  "Freq" = c(.6,.3,.4,.4,.2,.6,.3,.4,.9,.2),
  "BP" = c(103,87,32,42,59,109,78,205,135,176),
  "first" = c(1,1,1,1,0,0,0,0,NA,1),
  "second" = c(0,0,1,1,0,0,1,1,1,1),
  "final" = c(0,1,0,1,0,1,0,1,1,1)
)
mdbxp <- data.frame(name=c(rep("Freq",10),rep("BP",10),rep("first",10)
                           ,rep("second",10),rep("final",10)),
                    value = c(medData$Freq,medData$BP,medData$first
                              ,medData$second,medData$final))
ggplot(mdbxp, aes(factor(name), value)) + geom_boxplot()+ facet_wrap( ~ factor(name), scales="free")

ggplot(mdbxp, aes(value))+
       geom_histogram(colour="white", bins=7) +
       facet_wrap(~factor(name), scales = "free")+ggtitle("Medical Data of 10 Patients")
