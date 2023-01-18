bikes <- readr::read_csv("https://www.cedricscherer.com/data/london-bikes.csv", col_types = "Dcfffilllddddfc")

library(ggplot2)
library(patchwork)

source(here::here("src", "theme.R"))
