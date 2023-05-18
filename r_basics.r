library(tidyverse)

data = read.csv("monsters.csv")
head(data, 5)

# mpg data found within ggplot
ggplot2::mpg

# creating ggplot
ggplot(data = data) + 
  geom_point(mapping = aes(x = Health, y = Sanity, color = Level))


# Facets
ggplot(data = data) + 
  geom_point(mapping = aes(x = Health, y = Sanity)) + 
  facet_wrap(~ Level, nrow = 2)

# ggplot smooth
ggplot(data = data) + 
  geom_smooth(mapping = aes(x = Health, y = Sanity))

# ggplot geom + smooth
ggplot(data = data, mapping = aes(x = Health, y = Sanity)) + 
  geom_point(mapping = aes(color = Type)) + 
  geom_smooth()

# barchart
ggplot(data = data) + 
  geom_bar(mapping = aes(x = Type))

# data min and max
ggplot(data = data) + 
  stat_summary(
    mapping = aes(x = Health, y = Sanity),
    fun.min = min,
    fun.max = max,
    fun = median
  )

# diamonds data
bar <- ggplot(data = diamonds) + 
  geom_bar(
    mapping = aes(x = cut, fill = cut), 
    show.legend = FALSE,
    width = 1
  ) + 
  theme(aspect.ratio = 1) +
  labs(x = NULL, y = NULL)

bar + coord_flip()
bar + coord_polar()


ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

filter(mpg, cyl == 8)
filter(diamonds, carat > 3)