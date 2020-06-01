#Basic Operatrions on Dataset
dir()
read.csv("hw1_data.csv" )
##The above is the dataset we will work upon.
##Assigning it to variable 'x'
x<-read.csv("hw1_data.csv" )

##Q.1 Seperate Out first two rows from the dataset
##Ans:
x[1:2,]

##Q.2 Find the total number of rows in the give data set
##Ans:
nrow(x)

##Q.3 Seperate Out last two rows from the dataset
##Ans:
x[152:153,]

##Q.4 What is the value of Ozone in the 47th row of the dataset?
##Ans:
y<-x[,1]  ##Assigning Ozone Column to variable 'y'
y[[47]]   ##Calling the 47th value of the Ozone Column 


##Q.5 How many missing values are in the Ozone column of this dataset?
##Ans:
sum(is.na(y))

##Q.6 What is the mean of the Ozone column in this dataset? Exclude missing values(coded as Na) from this calculation. 
##Ans:
NOT<-is.na(y)  ##Checking for NA values
z<-y[!NOT]     ##Removing NA values

##Column Ozone after Removing NA values
z
mean(z)      ##Calculating mean of the Ozone Column

##Q.7 Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90.What is the mean of Solar.R in this subset?
##Ans:
library(dplyr)
filter(x,x[,1]>31&x[,4]>90)
s<-filter(x,x[,1]>31&x[,4]>90)
mean(s[,2])

##Q.8 What is the mean "Temp" when "Month" is equal to 6?
##Ans:
filter(x,x[,5]==6)
d<-filter(x,x[,5]==6)
mean(d[,4])

##Q.10 What was the maximum ozone value in the month of May(i.e Month is equal to 5)?
##Ans:

i<-filter(x,x[,5]==5)
t<-is.na(i[,1])
tt<-i[,1][!t]
max(tt)

