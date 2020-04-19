
#examples for the ggplot lecture:

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), shape = 2, color = "purple")

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), shape = 17, color = "purple")

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), shape = 23, color = "purple")

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), shape = 23, color = "purple", fill = "pink")


ggplot(data = diamonds) + 
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )

pointrange

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop..), stat = "count")


plt <- ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))
plt_b <- ggplot_build(plt)
plt_b$data[[1]]

ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy, colour = cty))

#### logo no topo! 

header-includes: 
  \usepackage{graphicx}
\usepackage{fancyhdr}
\pagestyle{fancy}
\setlength\headheight{28pt}
\fancyhead[L]{\includegraphics[width=5cm]{GPIM_Logo_300x85.png}}
\fancyfoot[LE,RO]{GPIM}
