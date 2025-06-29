install.packages("ggplot2")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

data(penguins)
View(penguins)

#Basic Scatterplot
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#Different Dataset
data("ToothGrowth")
ggplot(data = ToothGrowth) + geom_point(mapping = aes(x = dose, y = len, color=supp))

#Different Variables
ggplot(data = penguins) + geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm))

#Added Color Aesthetic
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species))

#Added Shape (other options are size and alpha)
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species, shape=species))

#Changing color of the whole plot
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color="purple")

#Plot type changed to smooth
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#Combining smooth and scatter plot
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g),color="purple") +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color = species), alpha=.6)

#Line type
ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))

#Jitter Function
ggplot(data = penguins) + 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#Bar Chart
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))

#Facet Wrap
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  facet_wrap(~species)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = color, fill = cut)) +
  facet_wrap(~cut)

#Facet Grid
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  facet_grid(sex~species)

#Labels
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman, 2007-2009")

#Annotations
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman, 2007-2009") +
  annotate("text", x=220, y=3750, label="The Gentoos are the largest",color="blue",
           fontface="bold", size=4.5,angle=25)

#Plot as a Variable
penguin_plot <- ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman, 2007-2009")

penguin_plot + annotate("text", x=220, y=3750, label="The Gentoos are the largest",
                        color="blue",fontface="bold", size=4.5,angle=25)

#Saving Plot
ggsave("Three Penguin Species.png")
