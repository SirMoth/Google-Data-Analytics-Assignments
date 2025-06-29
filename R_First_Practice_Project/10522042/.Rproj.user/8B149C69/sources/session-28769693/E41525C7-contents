install.packages("here")
library(here)
install.packages("skimr")
library(skimr)
install.packages("janitor")
library(janitor)

install.packages("palmerpenguins")
library(palmerpenguins)

skim_without_charts(penguins)
head(penguins)

penguins %>%
  select(-species)

penguins %>%
  rename(island_new=island)

rename_with(penguins,tolower)

clean_names(penguins)

penguins %>% arrange(-bill_length_mm)

penguins2 <- penguins %>% arrange(-bill_length_mm)
view(penguins2)

penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))
penguins %>% group_by(species, island) %>% drop_na() %>%
  summarize(max_bl = max(bill_length_mm), min_bl = min(bill_length_mm), mean_bl = mean(bill_length_mm))

penguins %>% filter(species == "Adelie")
