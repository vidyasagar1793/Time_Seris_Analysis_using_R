df<- read.csv("opsd_germany_daily.txt", header= TRUE)
#df

head(df)
tail(df)

View(df)
summary(df)

dim(df)

str(df)

head(df$Date)

df["2006-01-03",]

df["2007-08-10",]

df2<- read.csv("D:/opsd_germany_daily.txt",header = TRUE)
#df2

str(df2$Date)

head(df2)

row.names(df2)

summary(df2)

x <- as.Date(df2$Date)
head(x)
class(x)
str(x)
View(x)

year <- as.numeric(format(x,'%Y'))
head(year)
length(year)

month <-as.numeric(format(x,'%m'))
head(month)


day <- as.numeric(format(x,'%d'))
head(day)


length(year)
length(df2$Consumption)

df2 <- cbind(df2,year,month,day)
 

df2[1:3,]

plot(df2$year ,df2$Consumption,type='l', xlab="year", ylab="consumption")

plot(df2$year ,df2$Consumption,type='l', xlab="year", ylab="consumption",
     lty=1 ,ylim = c(800, 1500) , xlim=c(2006,2018))

par(mfrow=c(1,1))

plot(df2[,2])

plot(df2[,2], xlab ="year",ylab="consumption")
plot(df2[,2], xlab ="year",ylab="consumption",type='l',lwd=2,col='blue')
plot(df2[,2], xlab ="year",ylab="consumption",type='l',lwd=2, xlim=c(0,2018))
plot(df2[,2], xlab ="year",ylab="consumption",type='l',lwd=2 ,xlim=c(2006,2018))
plot(df2[,2], xlab ="year",ylab="consumption",type='l',lwd=2,
     xlim=c(2006,2018),ylim=c(900,2000),main="Consumption Graph")

plot(10*diff(log(df2[,2])),xlab="year",ylab="Consumption",type='l',lwd=2,
     ylim=c(-5,5),main="Consumption",col="orange")

install.packages("ggplot2")
library(ggplot2)

ggplot(df2,type="o")+geom_line(aes(x=year,y=Consumption))

ggplot(data=df2 , aes(x=year , y= Consumption, group=1)) + geom_line() + geom_point()

ggplot(data= df2, aes(x=year , y= Consumption, group= 1))+ geom_line(linetype="dashed")+ geom_point()
ggplot(data=df2 ,mapping=aes(x=year ,y= Consumption ,col="red")) + geom_point()


#df2
min(df2[,3],na.rm=T)
max(df[,3],na.rm=T)

min(df2[,2],na.rm=T)
max(df2[,2],na.rm=T)

min(df2[,4],na.rm=T)
max(df2[,4],na.rm=T)

min(df2[,5],na.rm=T)
max(df2[,5],na.rm=T)

par(mfrow=c(3,1))

plot1 <- plot(df2[,2],xlab="year",ylab="Daily Totals(GWh)",type="l",
              lwd=2, main="Consumption",col ="orange", ylim=c(840,1750)) 

plot1 <- plot(df2[,1],df2[,2],xlab="year",ylab="Daily Totals(GWh)",type="l",
              lwd=2, main="Consumption",col ="orange", ylim=c(0,1750)) 


plot2 <- plot(df2[,4],xlab="year",ylab="Daily Totals(GWh)",type="l",
               main="Solar",col ="blue", ylim=c(0,500)) 

plot2 <- plot(df2[,1],df2[,4],xlab="year",ylab="Daily Totals(GWh)",type="l",
              main="Solar",col ="blue", ylim=c(0,500)) 

plot3 <- plot(df2[,3],xlab="year",ylab="Daily Totals(GWh)",type="l",
              lwd=2, main="Wind",col ="red", ylim=c(0,900)) 

plot3 <- plot(df2[,1],df2[,3], xlab="year",ylab="Daily Totals(GWh)",type="l",
              lwd=2, main="Wind",col ="red", ylim=c(0,900)) 


par(mfrow=c(1,1))

str(df2)
x <- as.Date(df2$Date)
head(x)
class(x)
str(x)

moddate <- as.Date(x,format="%m/%d/%Y")

str(moddate)
df3 <- cbind(moddate,df2) 
head(df3)
str(df3)

df4 <- subset(df3,subset=df3$moddate >= '2017-01-01' & df3$moddate <= '2017-12-31')
head(df4)

plot4 <- plot(df4[,1], df4[,3],xlab= "year",ylab="Daily Totals (GWH)", type='l',
              lwd=2,main="Consumption",col='orange')

df4=subset(df3,subset=df3$moddate >= '2017-01-01' & df3$moddate <= '2017-02-28')
head(df4)

xmin <- min(df4[,1],na.rm=T)
xmax <- max(df4[,1],na.rm=T)
xmin
xmax

ymin <-min(df4[,3],na.rm=T)
ymax <-max(df4[,3],na.rm=T)
ymin
ymax


plot4 <- plot(df4[,1],df4[,3],xlab="year",ylab="Daily Totals (GWh)", type='l',
              lwd=2,main="Consumption",col="orange", xlim=c(xmin,xmax),ylim=c(ymin,ymax))

grid()

abline(h=c(1300,1500,1600))

abline(v=seq(xmin,xmax,7),lty=2,col="blue")

boxplot(df3$Consumption)
boxplot(df3$Solar)

quantile(df3$Consumption, probs=c(0,0.25,0.5,0.75,1))

boxplot(df3$Consumption,main="Consumption",ylab="Consumption",
        ylim=c(600,1800))

boxplot(df3$Consumption ~ df3$year , main="Consumption",
   ylab="Consumption", xlab="year", ylim=c(600,1800))

boxplot(df3$Consumption ~ df3$year, main="Consumption", ylab="Consumption", xlab="year",
        ylim=c(600,1800))

par(mfrow=c(3,1))

boxplot(df3$Consumption ~ df3$month, main="Consumption", ylab="Consumption", xlab="month",
        ylim=c(600,1800),las=1, col="red")

boxplot(df3$Wind ~ df3$month, main="Wind", ylab="Wind", xlab="month",
        ylim=c(0,900),las=1, col="blue")

boxplot(df3$Solar ~ df3$month, main="Solar", ylab="Solar", xlab="month",
        ylim=c(0,200),las=1, col="green")


par(mfrow=c(1,1))
boxplot(df3$Consumption ~ df3$day, main="Consumption", ylab="Consumption", xlab="days",
        ylim=c(600,1800),las=1, col="green")

#df3

library(dplyr)
summary(df3)
colSums(!is.na(df3))
sum(is.na(df3$Consumption))
sum(is.na(df3$Wind))
sum(is.na(df3$Solar))
sum(is.na(df3$Wind.Solar))

xmin <- min(df3[,1], na.rm=T)
xmin

freq1 <- seq(from= xmin, by="day", length.out=5)
freq1

typeof(freq1)
class(freq1)

freq2 <- seq(from = xmin, by="month", length.out=5)
freq2

freq3 <- seq(from = xmin, by="year", length.out=5)
freq3

selwind <- df3[which(is.na(df3$Wind)),
               names(df3) %in% c("moddate","Consumption","Wind","Solar")]
selwind[1:10,]
View(selwind)

selwind2 <- df3[which(!is.na(df3$Wind)),
               names(df3) %in% c("moddate","Consumption","Wind","Solar")]
selwind2[1:10,]
View(selwind2)

selwind3 <- df3[which(df3$year == "2011"),
               names(df3) %in% c("moddate","Consumption","Wind","Solar")]
selwind3[1:10,]
View(selwind3)

nrow(selwind3)

sum(is.na(df3$Wind[which(df3$year == "2011")]))

sum(!is.na(df3$Wind[which(df3$year == "2011")]))

str(selwind3)

selwind4 <- selwind[which(is.na(selwind3$Wind)),
                    names(selwind3) %in% c("moddate","Consumption","Wind","Solar")]
selwind4
