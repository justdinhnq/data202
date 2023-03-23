airlines <- read.csv(file = "data202/airlines.csv")
head(airlines)
# exact Matching of strings
airlines[airlines$Country == "New Zealand", ]

# Match substrings
c <- "New Zealand"
substring(c, 2, 2)
nchar(c)

tolower(c)
toupper("New Zealand")

idx.thailand <- airlines$Country == "Thailand"
airlines[idx.thailand,]

sum(idx.thailand) # 54

thai.airlines <- airlines[idx.thailand, ]
dim(thai.airlines)

View(thai.airlines)

sum(tolower(airlines$Country)=="thailand")
airlines$Country[tolower(airlines$Country)=="thailand"]

# find "Royal" at the START of an airline name
roy1 <- airlines[substring(airlines$Airline, 1, 5) == "Royal", ]
dim(roy1) # 37 rows

# find "Royal" ANYWHERE in an airline name
x <- c("Wilma", "Fred")
grep("r", x) # give the locations

x[grep("r", x)]

# a vevctor of integer locations
grep("royal", tolower(airlines$Airline))

# a vector of TRUE/FALSE
grepl("royal", tolower(airlines$Airline))

roy2 <- airlines[grepl("royal", airlines$Airline, ignore.case = TRUE), ]
dim(roy2)
roy2$Airline

# cat(): print without any annotation
cat("The area of "); 

# ======================================
## built in functions
dd <- Sys.Date()
class(dd)
as.numeric(dd)

Sys.time()
# get day / time / timezone









