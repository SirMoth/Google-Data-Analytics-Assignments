data("ToothGrowth")
View(ToothGrowth)

# Individual Lines
filtered_tg <- filter(ToothGrowth, dose == 0.5)
arrange(filtered_tg, len)

# Nested Function
arrange(filter(ToothGrowth, dose == 0.5), len)

# Pipe
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  arrange(len)

# Pipe Expanded
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm = T), .group = "drop")

filtered_toothgrowth