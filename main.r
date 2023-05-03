library(stringr)

source('R/utils.r')

month <- 5


test_url <- pc_url(month=month)
print(test_url)
test_html <- paste(readLines(test_url), collapse="\n")
matches <- scrape_fixtures(test_html)
cat(matches,fill=TRUE)