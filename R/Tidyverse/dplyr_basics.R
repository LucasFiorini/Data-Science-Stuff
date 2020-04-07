
library(gapminder)
library(dplyr)

# Filter for China in 2002
gapminder %>% filter(country == "China", year == 2002)

# Sort in ascending order of lifeExp
gapminder %>% arrange(lifeExp)


# Sort in descending order of lifeExp
gapminder %>% arrange(desc(lifeExp))

# Use mutate to change lifeExp to be in months
gapminder %>% mutate(lifeExp = lifeExp * 12)

# Use mutate to create a new column called lifeExpMonths
gapminder %>% mutate(lifeExpMonths = 12 * lifeExp)

# Filter for 1957 then summarize the median life expectancy
gapminder %>% filter(year == 1957) %>% summarize(medianLifeExp = median(lifeExp))

gapminder %>% group_by(year) %>% summarise(medianLifeExp = median(lifeExp))