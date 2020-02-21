

#checking working directorys
getwd()
#start of creating functions
#k=((f-32))*(5/9)+273.15

f_k<- function(f_temp){
  converted<-((f_temp-32))*(5/9)+273.15
  return(converted)
}

F_k(32)
#installing packages testhat 
install.packages("testthat")
library(testthat)
#using expect_equal function to check function
expect_equal(f_k(32),273.15)
expect_equal(nrow(cars), 50)

k_c<-function(k_temp){
  return(k_temp-273.15)
}
k_c(0)

expect_equal(k_c(0),-273.15)  


f_c<-function(f_temp){
  k_temp<-f_k(f_temp)
  temp_c<-k_c(k_temp)
  return(temp_c)
}  
f_c(32)  
f_c(212)  

expect_equal(f_c(32),0)

  
#function 2 vectors 
#vector x values
#vector w weights 
#f(1:6,1:6)
  
mean_wt<-function(x,w){
  if(length(x)!=length(w)){
    stop("x and w should be the same length")
  }
  return(sum(x*w)/sum(w))
}

mean_wt(1:6,1:6)
#[1] 4.333333

expect_equal(mean_wt(1:6,1:6),4.333333)

mean_wt(1:6,1:3)



testthat::expect_error(mean_wt(1:6,1:3))



sum_3<-function(x,y,......,z){
  return(x+y+z)
}
sum_3(1,2,3)



sum_3(1,2,z=3)




#making a function in order to calculate r-squared
rsq<-function(x,y){
  cor(x,y)^2
  }


mtcars<-mtcars
cor(mtcars$cyl,mtcars$mpg)
rsq(mtcars$cyl, mtcars$mpg)  

























