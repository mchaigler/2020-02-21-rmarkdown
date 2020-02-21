



k_c<-function(k_temp){
  if(k_temp<0){
    warning("You passed in a neagative Kelvin number")
    return(NA)
  }else{
  return(k_temp-273.15)
  }
}



k_c(-100)


k_c(NA)


k_c<-function(k_temp){
  if(is.na(k_temp<0)){ 
    return(NA)
  }else if(k_temp<0){
    warning("You passed in a neagative Kelvin number")
    return(NA)
  }else{
    return(k_temp-273.15)
  }
}



k_c(NA)


k_c(1:10)


if(all(c(TRUE,TRUE,TRUE,TRUE))){
  print("hello")
}




c(T,T)

identical(O,OL)




a=1
b=2

if( a<b){
  print("I wrote this piece of code right")
}

c(T,T)==c(T,T)

#&|
#&&||




#popular interview question


#write a function 
#takes a single value
#divisible 3 "fizz"
#divisible 5 "buzz"
#divisble 3 and 5 "fizzbuzz"


#%%




#very common interview question
fizzbuzz<-function(x){  
  if((x%%3)==0&(x%%5)==0){
    return("fizzbuzz")
  }else if ((x%%3)==0){
    return("fizz")
  }else if((x%%5)==0){
    return("buzz")
  }else{
    return(NA)
  }
}


fizzbuzz(6)
fizzbuzz(20)
fizzbuzz(15)


#fizzbuzz in dplyr and making so it reads vectors 

fizzbuzz_vec<-function(x){
  dplyr::case_when(
   (x%%3)==0&(x%%5)==0~"fizzbuzz",
   (x%%3)==0~"fizz",
  (x%%5)==0~"buzz",
  TRUE~as.character(x)
  )
}
  
fizzbuzz_vec(6)
fizzbuzz(20)
fizzbuzz(15)
fizzbuzz_vec(5:20)



~3+3
my_expr<-~3+3
my_expr[[1]]
my_expr[[2]]


my_thing<-c("hello","you")



calc_op<-function(x,y,op){
  switch(op,
         plus=x+y,
         minus=x-y,
         time=x*y,
         divide=x/y,
         stop("unknown op!"))
}


calc_op(10,100,"divide")

describe_temp<-function(temp){
  if(temp<=0){
    "freezing"
  }else if(temp<=10){
    "freezing"
  }else if(temp<=20){
    "cool"
  }else if(temp<=30){
    "warm"
  }else{
    "hot"
  }
}

describe_temp(5)
describe_temp(100)
describe_temp(100)

fish<-8+9
bird<-10+10

if (fish<bird)
  print("fish tastes better than bird")



f_values<-c(0,32,212,-40)



f_values*10



f_values*c(10,100)

f_k<- function(f_temp){
  converted<-((f_temp-32))*(5/9)+273.15
  return(converted)
}



 for (x in f_values){
  print(x*10)
}


for(pizza in f_values){
  print(f_k(pizza))
}





install.packages("purrr")
library(purrr)



converted<-purrr::map(f_values,f_k)
converted[[1]]
converted[[3]]


converted<-as.data.frame(purrr:: map_dbl (f_values,f_k))

head(mtcars)
tail(mtcars)
mtcars<-mtcars
purrr::map(mtcars,class)


purrr:: map(mtcars,summary)


mtcars$mpg<-as.numeric(mtcars$mpg)



as.numeric("missing")


map


library(tidyverse)
mtcars<-mtcars
mtcars %>% mutate(mpg=as.numeric(mpg))

purrr::map(  )


#apply, lapply, sapply, vapply

#lapply works on dataframes because dataframes are stored as lists

lapply(mtcars,f_k)


purrr::map_dbl(mtcars,mean)
sapply(mtcars,mean)
vapply(mtcars,mean,numeric(1))


library(nycflights13)

#1.compute the mean of every column in mtcars
#2 determine the type of each column in nycflights::flighs
#3 compute the number of unique values in each column of iris
#Hint: you may want to write a function)
#Generate 10 random normals from distributions with 
#means of -10,0,10,and 100


#1
purrr::map(mtcars,mean)


#2
flights<-flights
purrr::map(flights,class)

#3 
iris<-iris
names(iris)

num_unique<-function(x){
  return(length(unique(x)))
}

purrr::map_dbl(iris,num_unique)
purrr::map_dbl(iris,function(x) {length(unique(x))})


purrr::map_dbl(iris,~length(unique(.)))


set.seed(1)

purrr::map(c(-10,0,10,100), ~ rnorm(n=10,mean=. ))


purrr::map(c(-10,0,10,100),function(x){rnorm(n=10,mean=x)})


safe_log<-safely(log)



log(10)
safe_log(10)
safe_log("a")




x<-list(1,10,"a")


y<-x %>% map(safe_log)


y[[1]]
y[[2]]
y[[3]]





flipped_results<-y %>% transpose()
flipped_results[[1]]



flipped_results$result
?safely



mu<-list(5,10,-3)

map(mu,rnorm,n=5)
sigma<-list(1,5,10)
map2(mu,sigma,rnorm,n=5)



n<-list(1,2,3)
args<- list(mean=mu,sd=sigma,n=n)
purrr::pmap(args,rnorm)



#use walk for function side effects









































































  
 
      

 























































