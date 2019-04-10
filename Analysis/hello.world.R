BASE_DIR <- getwd()

#print("hello world from R")
#print("hahaha! look at me!")
#print("Boo!")

data <- read.csv(paste0(BASE_DIR, "/Data/import.csv"), header=TRUE)

# filter data where year is greater than 2010
## assumes year column is named exactly "Year"
filtered_data <- data %>% filter(Year>2010)

# write filtered data to new file called "filtered_data.csv"
write.csv(filtered_data, paste0(BASE_DIR, "/Data/output.csv"), col.names = TRUE)
