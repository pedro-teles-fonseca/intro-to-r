
## data visualization


## install.packages("ggplot2")   # apenas é preciso na primeira utilização

library(ggplot2)


View(mpg)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))


ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))


subset(mpg, class == "2seater")


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class)) +
  scale_shape_manual(values = 0:6)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class, color = class)) +
  scale_shape_manual(values = 0:6)


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = cty))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = cty))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = cty))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = cty))



ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot(data = mpg) + 
geom_smooth(mapping = aes(x = displ, y = hwy, color = drv))


ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy,
                 color = displ < 5))


# mpg$displ<5

ggplot(mpg) +
  geom_smooth(aes(x = displ, y = hwy, linetype = class == "suv"))


# mpg$displ<5

ggplot(mpg) +
  geom_smooth(aes(x = displ, y = hwy, color = class == "2seater"))


ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy),
             color = "blue")


ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy),
             color = "blue",
             size = 4,
             shape = 6)

ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy),
             color = "red",
             size = 4,
             shape = 6)

ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy),
             color = "blue",
             fill = "red",
             size = 4,
             shape = 24)


ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy),
             color = "blue",
             fill = "red",
             size = 4,
             shape = 24,
             stroke = 3)


ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy))


ggplot(data = mpg) +
  geom_smooth(aes(displ, hwy), linetype = "dotted")

ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy), linetype = "twodash")

ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy), linetype = "twodash",
              size = 0.5)

ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy), linetype = "twodash",
              size = 2)

ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy), linetype = "twodash",
              size = 4)


ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy), linetype = "twodash",
              size = 4,
              se = FALSE)

ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy), se = FALSE)

ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy, linetype = drv))

ggplot(data = mpg) +
geom_smooth(aes(x = displ, y = hwy, linetype = drv),
            se = FALSE)

ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy), se = FALSE)

ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy),
              method = "lm")


ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy, linetype = drv),
              se = FALSE,
              show.legend = FALSE)

ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  facet_wrap(~ class)

ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy)) +
  facet_wrap(~ class)

ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy), se = FALSE) +
  facet_wrap(~ class)

ggplot(data = mpg) +
  geom_smooth(aes(x = displ, y = hwy), se = FALSE, method = "lm") +
  facet_wrap(~ class)

ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(drv ~  class)

ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(drv ~  year)


ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(. ~  year)


ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(drv ~  .)

ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  facet_wrap(~ drv)

ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) + 
  geom_smooth(aes(x = displ, y = hwy))


ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) + 
  geom_smooth(aes(x = displ, y = hwy), se = FALSE)

ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) + 
  geom_smooth(aes(x = displ, y = hwy, group = drv), se = FALSE)


ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) + 
  geom_smooth(aes(x = displ, y = hwy, linetype = drv), se = FALSE)


ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) + 
  geom_smooth(aes(x = displ, y = hwy, color = drv), se = FALSE)


ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) + 
  geom_smooth(aes(x = displ, y = hwy, color = class), se = FALSE)


ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy)) + 
  geom_smooth(aes(x = displ, y = hwy))

ggplot(data = mpg , aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

ggplot(data = mpg , aes(x = displ, y = hwy)) +
  geom_smooth(aes(color = drv), se = FALSE) + 
  geom_point() 
  
ggplot(data = mpg , aes(x = displ, y = hwy)) +
  geom_smooth(aes(color = drv), se = FALSE) + 
  geom_point(color = "lightblue") 


ggplot(data = mpg , aes(x = displ, y = hwy, color = drv)) +
  geom_smooth(se = FALSE) + 
  geom_point() 

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = class)) + 
  geom_smooth()

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = class)) + 
  geom_smooth(method = "lm")

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = class)) + 
  geom_smooth(aes(linetype = drv), se = FALSE)

ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_smooth(se = FALSE) +
  geom_point()

ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_smooth(se = FALSE) +
  geom_point() + 
  facet_wrap(~ class)

mpg <- mpg
subcompact <- subset(mpg, class == "subcompact")

ggplot(data = mpg, aes(displ, hwy)) +
  geom_point(aes(color = class)) +
  geom_smooth(data = subcompact, method = "lm", se = FALSE)


subcompact <- subset(mpg, class == "subcompact") 
two_seater <- subset(mpg, class == "2seater")

ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(color = class)) + 
  geom_smooth(data = subcompact, method = "lm", se = FALSE) + 
  geom_smooth(data = two_seater, method = "lm" , se = FALSE)


ggplot(mpg, aes(displ, hwy)) + 
  geom_point(aes(color = drv)) + 
  geom_smooth(se = FALSE) + 
  labs(
    title = "Engine size vs highway fuel efficiency",
    subtitle = "Efficiency decreases with engine size",
    caption = "some metadata about our plot. "
    )

ggplot(mpg, aes(displ, hwy)) + 
  geom_point(aes(color = drv)) + 
  geom_smooth(se = FALSE) + 
  labs(
    title = "Engine size vs highway fuel efficiency",
    subtitle = "Efficiency decreases with engine size",
    caption = "some metadata about our plot. ",
    x = "Engine displacement (L)",
    y = "Highway fuel economy (mpg)",
    color = "drive wheel"
  )


ggplot(diamonds) + 
  geom_bar(aes(x = cut))

tib <- tribble(
  ~cut, ~freq, 
  "Fair", 1610,
  "Good", 4906, 
  "Very Good", 12082, 
  "Premium", 13791, 
  "Ideal", 21551
)

ggplot(tib) + 
geom_col(aes(cut, y = freq)) 
  

ggplot(diamonds) + 
  geom_bar(aes(x = cut),
           fill = "lightblue")

ggplot(diamonds) + 
  geom_bar(aes(x = cut, fill = clarity),
           position = "stack")

ggplot(diamonds) + 
  geom_bar(aes(x = cut, fill = clarity),
           position = "fill")


ggplot(diamonds) + 
  geom_bar(aes(x = cut, fill = clarity),
           position = "dodge")


ggplot(data = mpg, aes(y = hwy)) + 
  geom_boxplot()


ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  geom_boxplot() +
  coord_flip()


ggplot(mpg, aes(x = "", fill = drv)) +
  geom_bar()


last_plot()

myplt <-  ggplot(mpg, aes(displ, hwy)) + geom_point()


ggsave("outputs/my-plot.pdf", plot = myplt)
























































