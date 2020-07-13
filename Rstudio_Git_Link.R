print("This file was created within RStudio")
print("And now it lives on Github")

library(dplyr)

iris_data <- iris
iris_data %>% 
  dplyr::group_by(Species) %>% 
  dplyr::summarise(mean = mean(Sepal.Length))
