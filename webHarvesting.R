library(rvest)
url = "https://en.wikipedia.org/wiki/Gun_violence_in_the_United_States_by_state"
# getting the xml format of the webpage
h = read_html(url)
#class(h)
#h

# extracting just the table
# We used html_nodes function so that we can get
# the second table which is the data table
tab = h %>% html_nodes("table")
#tab
tab = tab[[2]]
#tab

# converting it to a data frame
murders_raw = tab %>% html_table
#class(murders_raw)
#head(murders_raw)
str(murders_raw)
#names(murders_raw)

#changing column names
#colnames(murders_raw) = c("State","Population")
colnames(murders_raw)[which(names(murders_raw) == "Population(total inhabitants) (2015) [2]")] = "Population"

#names(murders_raw)
class(murders_raw$Population)

murders_raw$Population[1:3]
as.numeric(murders_raw$Population[1:3])
