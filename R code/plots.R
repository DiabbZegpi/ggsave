library(tidyverse)
library(patchwork)
library(ggforce)

data(iris)
theme_set(theme_ligth())
descrp <- "The smallest specie among virginica and versicolor"


p <- 
  ggplot(iris,
       aes(x = Petal.Width, y = Petal.Length)) +
  geom_point() +
  geom_mark_ellipse(show.legend = FALSE,
                    aes(fill = Species,
                        filter = Species == "setosa",
                        label = "Iris setosa",
                        description = descrp)) +
  labs(title = "Iris on default Windows PNG engine",
       x = "Petal width (cm)", y = "Petal length (cm)")

ggsave(filename = "images/iris_default.png", plot = p,
       height = 5, width = 7, units = "in", dpi = 500)


q <- p + labs(title = "Now with Cairo's PNG engine") 

ggsave(filename = "images/iris_cairo.png", plot = q,
       height = 5, width = 7, units = "in", dpi = 500, type = "cairo")
