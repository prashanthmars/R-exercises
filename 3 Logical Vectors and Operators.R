
#Source of the exercise
#https://www.r-exercises.com/2015/11/25/logical-vectors-and-operators/

data <- mtcars


#Exercise 1
#Use logical operators to output only those rows of  data  where 
#column  mpg  is between 15 and 20 (excluding 15 and 20).

head(data)
data[data$mpg>15 & data$mpg<20,]


#Exercise 2
#Use logical operators to output only those rows of  data  
#where column  cyl  is equal to 6 and column  am  is not 0.

data[data$cyl==6 & data$am!=0,]


#Exercise 3
#Use logical operators to output only those rows of  data  
#where column  gear  or  carb  has the value 4.

data[data$gear==4 | data$carb==4,]


#Exercise 4
#Use logical operators to output only the even rows of  data.

data[index(data) %% 2==0,]


#Exercise 5
#Use logical operators and change every fourth element in column  mpg  to 0.
data[index(data) %% 4==0,"mpg"]<-0
data


#Exercise 6
#Output only those rows of  data  where columns  vs  and  am  have the same value 1, 
#solve this without using  ==  operator.

data[(as.numeric(data$vs)-1) & (as.numeric(data$am)-1),]


#Exercise 7
#(TRUE + TRUE) * FALSE , what does this expression evaluate to and why?
#(TRUE+TRUE) leads to 2
#2 * FALSE equates to 2*0 = 0
#Answer is 0

#Exercise 8
#Output only those rows of  data  where at least  vs  or  am  have the value 1, 
#solve this without using  ==  or  !=.

data[(as.numeric(data$vs)-1) | (as.numeric(data$am)-1),]

#Exercise 9
#Explain the difference between  | ,  || ,  &  and  &&.
# | single element logical OR comparison
# || vector logical OR comparison
# & single element logical AND comparison
# && vector logical AND comparison

#Exercise 10
#Change all values that are 0 in the column  am  in  data  to 2.

data$am[data$am==0]<-2
data

#Exercise 11
#Add 2 to every element in the column  vs  without using numbers.
data+TRUE+TRUE

#Exercise 12
#Output only those rows of  data  where  vs  and  am  have different values, 
#solve this without using  ==  or  !=.

data[(as.numeric(data$vs)-1) & !(as.numeric(data$am)-1) | !(as.numeric(data$vs)-1) & (as.numeric(data$am)-1),]
