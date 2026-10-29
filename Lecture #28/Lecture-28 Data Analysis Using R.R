##(R AS CACLULATOR) ###########################################################################
#Addition
2+3
#subtraction
2-3
#Multiplication
2*3
#Division
2/3
#Power
2^3
#All in One
2+3;2-3;2*3;2/3
#Logarithm
log(10) ## means natural logarithm
log10(5) ## base 10 log
#antilog
exp(1)
#Squareroot
sqrt(9)
#factorial
factorial(3)
#Gamma Function 
gamma(5)

#ASSGNMENT OPERATORS ##########################################################################
x=2  # which assigns 2 to x
x
x+2
x-5
sqrt(x)
y=2*x
y
# Character Data
x <- "data"
x
# To find the length of a character
nchar(x)
nchar("hello")
nchar(3)
nchar(452)

## Operations on a vector
x=c(1,32,73,44,5,61,55,100,20,81)
x
y=c(21:30)
y
length(y)
length(x)
max(x) ##maximum value inx
min(x) ##minimum value inx
sum(x) ##total of all the values in x
mean(x) ##arithmetic average of the values inx
median(x) ##median value inx
range(x) ##vector of minxand maxx
var(x) ##sample variance ofx
cor(x,y) ##correlation between vectorsxandy
sort(x) ##a sorted version of x

## Data Frames #################################################################################
# Creating Data Frames
x=c(23,17,91,11,56)
y=c(15,21,18,25,30)
data.frame(x,y)
DF<-data.frame(x,y)
DF
summary(DF)

## DATA FRAMES WITH MORE ATTRIBUTES ############################################################
Students=c("Ahmad", "Sana", "Ali", "Noor", "Ayesha","Imran", "Omer", "Saba","Zain","Zoha")
Students
English=c(55,58,61,62,65,70, 72,76,80,83)
English
Mathematics=c(60,65,68,70,73, 75,78, 82,85,90)
Mathematics
Business_Studies=c(55,58,63,67,70,73,75,77,81,85)
Business_Studies
Computer_Science=c(51,55,57,62,65,69,71,72,75,80)
Computer_Science
MDF=data.frame(Students, English, Mathematics,Business_Studies,Computer_Science)
MDF
nrow(MDF)
ncol(MDF)
dim(MDF)
names(MDF)
names(MDF)[3]
rownames(MDF)
head(MDF)
tail(MDF)
class(MDF)
class(MDF$Students)
class(MDF$English)
class(MDF$Mathematics)
class(MDF$Business_Studies)
class(MDF$Computer_Science)
MDF[3, 2]
MDF[5,]
MDF[,2]
MDF[c(1,5),]
MDF[6,c(3,4)]
MDF[6,1:4]
MDF[c(3, 5), 1:3]

################################################################################################
## Data Visualization ##
## Bar Chart ####################################################################################

# Create the data for the chart
x<- c(7,12,28,3,41)
x
N <- c("Mar","Apr","May","Jun","Jul")
N
# Barchart Command
barplot(x,names.arg=N,xlab="Month",ylab="Revenue",col="green",main="Revenue chart",border="red")


## Pie Chart ###################################################################################

# Create data for the graph.
x=c(21, 62, 10, 53)
x
labels<- c("London", "New York", "Singapore", "Mumbai")
labels

# Plot the chart with title and rainbow color pallet.
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))

## Slice Percentages and Chart Legend

# Create data for the graph.
x <-  c(21, 62, 10,53)
x
labels <-  c("London","New York","Singapore","Mumbai")
labels
piepercent<- round(100*x/sum(x), 1)
piepercent
# Plot the chart.
pie(x, labels = piepercent, main = "City pie chart",col = rainbow(length(x)))
legend("topright", c("London","New York","Singapore","Mumbai"), cex = 0.8,fill = rainbow(length(x)))

## 3D Pie Chart
# Get the library.
library(plotrix)

# Create data for the graph.
x <-  c(21, 62, 10,53)
lbl <-  c("London","New York","Singapore","Mumbai")

# Plot the chart.
pie3D(x,labels = lbl,explode = 0.1, main = "Pie Chart of Countries ")

## HISTOGRAM ##################################################################################################
# Let x=Marks in Quiz-1
x=c(1,2,2,2,3,3,4,4,4,4,4,4,5.5,5,5,6,6,7)
x
hist(x, main="Histogram of Marks in Quiz-1", xlab="Marks in Quiz-1", col="green", border="red")

## Box Plot ###################################################################################################
## Single Box Plot
x=c(9,45,50,53,55,60,62,65,70,80)
length(x)
boxplot(x, main="Box and Whisker Plot", ylab="Marks in Mathematics", col="red", pch=20)
boxplot(x, main="Box and Whisker Plot", xlab="Marks in Mathematics", col="red", pch=20, horizontal = TRUE)

## Multiple Boxplots in Same Plot ##
Maths=c(9,45,50,53,55,60,62,65,70,80)
length(Maths)
Stats=c(40,45,50,52,55,60,61,65,68,95)
length(Stats)
Economics=c(35,40,44,50,55,60,62,67,70,75)
length(Economics)
MD=data.frame(Maths,Stats,Economics)
MD
boxplot(MD, main="Box and Whisker Plot",xlab="Subjects", ylab="Marks", col=c("red","green","yellow"), pch=20)
boxplot(MD, main="Box and Whisker Plot",xlab="Marks", ylab="Subjects", col=c("red","green","yellow"), pch=20, horizontal = TRUE)


## R-L-1-SIMPLE LINEAR REGRESSION MODEL AND  CORRELATION  ##################################################################################

## SLRM DATA ##
x<-c(1,2,3,4,5)
x
y=c(2.4,2.6,2.8,3.2,3.5)
y
length(x)
length(y)
## Data Frame ##
SD=data.frame(x,y)
SD
str(SD)
summary(SD)

## SCatter Plot of Varaiables #######################################

plot(y ~ x,
     data = SD,
     main = "Scatterplot of CGPA VS STUDY HOURS",
     col = "blue",
     xlab = "Study Hours",
     ylab = "CGPA",
     pch=16)

## CORRELATION AND ITS TESTING #######################################################################################################
cor(x,y)
r=cor(x,y)
r
cor.test(x,y)

## SLRM Model Estimation #############################################################################################################
lm(y~x,data=SD)
slrm=lm(y~x, data=SD)
summary(slrm)

## SLRM Scatter Plot with Regression Line ############################################################################################
plot(y ~ x,
     data = SD,
     main = "Scatterplot of CGPA VS STUDY HOURS",
     col = "blue",
     xlab = "VARIABLE (X)",
     ylab = "VARIABLE (Y)",pch=16)
abline(slrm,col = "red", lwd=3)

## CONFIDENCE INTERVAL FOR PARAMETERS OF THE MODEL ###################################################################################

## CI for Slope Coefficient ##
confint(slrm, 'x', level=0.95)
## CI for Intercept ##
confint(slrm, '(Intercept)', level=0.95)
## CI for Both
confint(slrm, level=0.95)

## PREDICTED VALUE, CONFIDENCE INTERVALS AND PREDICTION INTERVALS ####################################################################
## Predicted Values ##
predict(slrm,list(x=6))

## FOR MORE THAN ONE VALUES ##
predict(slrm,list(x=c(2.3,3.5,4.6)))
## R-L-2-MULTIPLE LINEAR REGRESSION MODEL ############################################################################################
## DATA SET ##

y=c(3,1,8,3,5)
x1=c(3,1,5,2,4)
x2=c(5,4,6,4,6)

length(y)
length(x1)
length(x2)
MD=data.frame(y,x1,x2)
MD
str(MD)
summary(MD)

## Scatter Plot Grid ##
pairs(MD)

# Correlation Matrix #
# Instal Library datarium
library(datarium)
cor(MD)

## MODEL PARAMEERS ESTIMATION ##
lm(y~x1+x2,data=MD)
mlrm<-lm(y~x1+x2, data=MD)
mlrm
summary(mlrm)


