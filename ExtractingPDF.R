# datasets provided in dslabs shows scientific funding rates by gender in the Netherlands
library(dslabs)
data("research_funding_rates")
research_funding_rates 

# using "pdftools" library along with dplyr and tidyverse.
library("pdftools")
library(dplyr)
library(tidyverse)

# downloading PDF then importing it into R
temp_file <- tempfile()
url <- "http://www.pnas.org/content/suppl/2015/09/16/1510159112.DCSupplemental/pnas.201510159SI.pdf"
download.file(url, temp_file)
txt <- pdf_text(temp_file)
file.remove(temp_file)

# just keeping page 2
raw_data_research_funding_rates <- txt[2]

# looking at the download
data("raw_data_research_funding_rates")
raw_data_research_funding_rates %>% head

# each line is separated by \n. So, create a list with lines of text as elements
tab <- str_split(raw_data_research_funding_rates, "\n")

# Because we start off with just one element in the string, we end up with a list with just one entry
tab <- tab[[1]]

# check out this object
tab %>% head

# column names are in the 3rd and 4th entries. Extract them.
the_names_1 <- tab[3]
the_names_2 <- tab[4]

# examine first item and clean up
the_names_1
the_names_1 <- the_names_1 %>%
  str_trim() %>%
  str_replace_all(",\\s.", "") %>%
  str_split("\\s{2,}", simplify = TRUE)
the_names_1

# examine second item and clean up
the_names_2
the_names_2 <- the_names_2 %>%
  str_trim() %>%
  str_split("\\s+", simplify = TRUE)
the_names_2

# join items 1 and 2 to generate one name for each column
tmp_names <- str_c(rep(the_names_1, each = 3), the_names_2[-1], sep = "_")
the_names <- c(the_names_2[1], tmp_names) %>%
  str_to_lower() %>%
  str_replace_all("\\s", "_")
the_names

# using str_split to get data from line 6-14
new_research_funding_rates <- tab[6:14] %>%
  str_trim %>%
  str_split("\\s{2,}", simplify = TRUE) %>%
  data.frame(stringsAsFactors = FALSE) %>%
  setNames(the_names) %>%
  mutate_at(-1, parse_number)
new_research_funding_rates %>% head()

# compare data from dslabs to the extracted data
identical(research_funding_rates, new_research_funding_rates)

