#bikes <- readr::read_csv("https://www.cedricscherer.com/data/london-bikes.csv", col_types = "Dcfffilllddddfc")
bikes <- readr::read_csv(here::here("data", "london-bikes.csv"), col_types = "Dcfffilllddddfc")

library(ggplot2)
library(patchwork)

source(here::here("src", "theme.R"))
theme_set(theme_custom())

colors <- c("#28A87F", "#FFA200", "#9C4BFF","#00B3FF","#FF5477")
