setwd("C:\\Users\\Dilitha\\Desktop\\IT24200320")
##question 01
##i
##Binomal Distribution
#Here,random variable X has binomal distribution with n=50 and p=0.85
1-pbinom(46,50,0.85,lower.tail = TRUE)
##question2
#i)X=number of calls in one hour
#ii)Poisson distribution
#Here,random varable X has poisson distribution with lambda=12
dpois(15,12)