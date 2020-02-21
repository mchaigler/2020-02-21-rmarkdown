
install.packages("AmesHousing")
library(AmesHousing)


install.packages("tidymodels")
library(tidymodels)



ames<-AmesHousing::make_ames()

#start of code
  
install.packages("AmesHousing")
library(AmesHousing)


install.packages("tidymodels")
library(tidymodels)



ames<-AmesHousing::make_ames()

lm_ames<-lm(Sale_Price~Gr_Liv_Area,data=ames)
summary(lm_ames)

cor(ames$Sale_Price,ames$Gr_Liv_Area)

broom::tidy(lm_ames)

#tidymodels
#parsnip
#carrot
#parsnip for making certain types of models

install.packages("parsnip")
library(parsnip)

lm_spec<-parsnip::linear_reg() %>%
  parsnip::set_engine("lm")


glmnet_spec<-parsnip::linear_reg() %>%
  parsnip::set_engine("glmnet")


lm_fit<-parsnip::fit(lm_spec,Sale_Price~Gr_Liv_Area,data=ames)

broom::tidy(lm_fit)

  
  
  
  
  
  
  
  
  





