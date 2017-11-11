library(xlsx)
library(rJava)
library(xlsx)
report<-"C:\\Users\\User\\Documents\\reportTable.xlsx"
myReport<-read.xlsx(report,1)
myReport
summary(myReport)
hist(myReport$Term5,xlab="percentage per subject",ylab="value",col="Blue",main="Term5 results")
boxplot(x=myReport ,data="Term3",varwidth = TRUE,notch=FALSE)
library(ggplot2)
library(reshape2)
reportTable=melt(myReport)
reportTable
colnames(reportTable)=c("Subject","Term","Percentage")
reportTable
ggplot(reportTable,aes(x="Subject",y="Percentage"))+geom_point(aes(shape="Percentage"))
