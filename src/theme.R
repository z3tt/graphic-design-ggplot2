invisible(library(ggplot2))
invisible(library(systemfonts))

systemfonts::register_variant(
  name = "Asap Semicondensed Medium",
  family = "Asap Semicondensed",
  weight = "medium"
)

theme_custom <- function(base_size = 14, base_family = "Asap Semicondensed",
                         base_line_size = base_size/22, base_rect_size = base_size/22)
{
  family_medium <- base_family
  if (base_family == "Asap Semicondensed") family_medium <- "Asap Semicondensed Medium"


  theme_bw(base_size = base_size, base_family = base_family,
           base_line_size = .8, base_rect_size = base_rect_size) %+replace%
    theme(
      panel.background = element_rect(fill = "grey96", color = "white"),
      #panel.border = element_rect(color = "white", fill = NA),
      panel.border = element_rect(color = NA, fill = NA),
      panel.grid.major = element_line(color = "white"),
      panel.grid.minor = element_blank(),
      panel.spacing = grid::unit(1.5, "lines"),
      axis.text = element_text(size = rel(.8), color = "grey28"),
      axis.title.x = element_text(size = rel(1), family = family_medium, color = "grey10", margin = margin(t = .3 * base_size)),
      axis.title.y = element_text(size = rel(1), family = family_medium, color = "grey10", angle = 90, margin = margin(r = .6 * base_size)),
      axis.ticks = element_line(color = "grey70"),
      axis.ticks.length = grid::unit(.3, "lines"),
      strip.text = element_text(face = "bold", color = "grey10"),
      strip.text.x = element_text(margin = margin(b = .5 * base_size), size = rel(1.25)),
      strip.text.y = element_text(margin = margin(l = .5 * base_size), size = rel(1.25)),
      legend.title = element_text(size = rel(1), family = family_medium, color = "grey10", hjust = 0),
      legend.margin = margin(c(0, 0, 0, 0)),
      plot.tag = element_text(size = rel(1.25), color = "grey10"),
      plot.title = element_text(size = rel(1.5), face = "bold", hjust = 0, margin = margin(b = 1.25 * base_size)),
      plot.subtitle = element_text(size = rel(1.1), margin = margin(t = -base_size, b = 1.25 * base_size)),
      plot.caption = element_text(size = rel(.8), color = "grey28", hjust = 1, margin = margin(t = .9 * base_size)),
      plot.title.position = "plot",
      plot.caption.position = "plot",
      plot.margin = margin(rep(.5, 4)),
      complete = TRUE
    )
}
