
# Set working directory
setwd("C:/Users/Liam McBain/Documents/Data Analytics/DataAnalytics2021_Liam_McBain")

# Install excel reading libs
#install.packages("readxl")
#library("readxl")

# Load EPI data
#epi_data = read.csv(file="./data/EPI_Data_2010.csv",header=TRUE)
epi_data = read_excel('./data/EPI_Data_2010.xls',sheet='EPI2010_onlyEPIcountries')

# Load GPW data
gpw_data = read.csv('./data/GPW3_GRUMP_SummaryInformation_2010.csv',header=TRUE)

# EPI Data EDA
summary(epi_data$EPI)
fivenum(epi_data$EPI,na.rm=TRUE)
stem(epi_data$EPI)
hist(epi_data$EPI)
hist(epi_data$EPI,seq(30.0,95.0,1.0),prob=TRUE)
lines(density(epi_data$EPI,na.rm=TRUE,bw='SJ'))
rug(epi_data$EPI)

# Further fitting distributions

# EPI
plot(ecdf(epi_data$EPI),do.points=FALSE,verticals=TRUE)
par(pty='s')
qqnorm(epi_data$EPI)
qqplot(qt(ppoints(250),df=5),seq(30,95,1),xlab="Q-Q Plot for tdsn")
qqline(seq(30,95,1))

# DALY
plot(ecdf(epi_data$DALY),do.points=FALSE,verticals=TRUE)
par(pty='s')
qqnorm(epi_data$DALY)
qqplot(qt(ppoints(250),df=5),seq(30,95,1),xlab="Q-Q Plot for tdsn")
qqline(seq(30,95,1))

# Water_h
plot(ecdf(epi_data$WATER_H),do.points=FALSE,verticals=TRUE)
par(pty='s')
qqnorm(epi_data$WATER_H)
qqplot(qt(ppoints(250),df=5),seq(30,95,1),xlab="Q-Q Plot for tdsn")
qqline(seq(30,95,1))


