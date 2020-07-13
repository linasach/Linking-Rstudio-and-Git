print("This file was created within RStudio")
print("And now it lives on Github")

library(dplyr)
library(ggplot2)

iris_data <- iris %>% 
  dplyr::group_by(Species) %>% 
  dplyr::summarise(mean = mean(Sepal.Length))

ggplot(data = iris_data, aes(x = Species, y = mean)) +
  geom_point(stat = "identity") +
  scale_y_continuous(limits = c(4,7), breaks = c(4, 4.5, 5, 5.5, 6, 6.5, 7))
