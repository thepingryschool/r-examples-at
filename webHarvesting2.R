library(rvest)
library(dplyr)
library(stringr)
library(tidyverse)

# web table to dataframe
url = "https://en.wikipedia.org/wiki/Murder_in_the_United_States_by_state"
murders_raw = read_html(url) %>% html_nodes("table") %>% html_table()
murders_raw = murders_raw[[2]] %>% setNames(c("state", "population", "total", "murders", "gun_murders", "gun_ownership", "total_rate", "murder_rate", "gun_murder_rate"))
#head(murders_raw)
str(murders_raw)


# character with commas to numeric
commas = function(x){ any(str_detect(x, ",")) }
murders_raw %>% summarize_all(funs(commas))

test_1 = str_replace_all(murders_raw$population, ",", "")
test_1 = as.numeric(test_1)
test_1

# parse_number from readr package
test_2 = parse_number(murders_raw$population)
identical(test_1, test_2)

murders_new <- murders_raw %>% mutate_at(2:3, parse_number)
murders_new %>% head
