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

dd <- c("2023-07-04", "2023-03-14", "2023/02/28", "20 Mar 2023")

# specify format
ddl <- as.Date(dd, format="%Y-%m-%d")
ddl

format(ddl)
format(ddl, format = "It's the date %d %B %Y")

# date
format(ddl, "%A")

as.numeric(ddl)

# Date-times- as extra subtlety
# %H hourrs
# %M minutes
# %S seconds (continous - double)

install.packages("lubridate")
library(lubridate)

ss <- c("1 Jan 1970 00:00:00", "23 Nov 1963 12:10:50")
as.POSIXct(ss, format = "%d %B %Y %H:%M:%S")

secs <- c(29, 10, 11, 20,55)
mins <- c(0,0,13,34,59)
hours <- c(0,1,1,1,12)
ISOdate(2023, 3, 24, hours, mins, secs, tz="Pacific/Aukland")

# arithmetic with dates
class(ddl)
ddl>as.Date("2015-1-1")

mean(ddl)

today <- Sys.Date()
newyear <- as.numeric(format(today, "%Y"))-5
as.Date(
  paste(
    newyear,
    format(today, "-%m-%d"),
    sep = ""
  )
)

active <- read.csv("active-satellites.csv")
