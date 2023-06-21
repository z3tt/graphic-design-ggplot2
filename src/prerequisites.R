#bikes <- readr::read_csv("https://www.cedricscherer.com/data/london-bikes.csv", col_types = "Dcfffilllddddfc")
bikes <- readr::read_csv(here::here("data", "london-bikes.csv"), col_types = "Dcfffilllddddfc")

library(dplyr)
library(ggplot2)
library(patchwork)

source(here::here("src", "theme.R"))
theme_set(theme_custom())

colors <- c(
  green  = "#28A87F",
  orange = "#FFA200",
  purple = "#9C4BFF",
  blue   = "#00B3FF",
  red    = "#FF5477",
  grey   = "#8c8c8c"
)

#col_period <- c(prismatic::clr_desaturate(prismatic::clr_darken(colors[c("orange", "purple")], .05), .5))
#names(col_period) <- c("day", "night")
col_period <- c(day = "#e9b86a", night = "#a6aafa")
col_period <- c(day = "#FFA200", night = "#757bc7") #fbb200

col_season <- c(
  winter = "#00B3FF",
  spring = "#28A87F",
  summer = "#FFA200",
  autumn = "#ab7685"
)
