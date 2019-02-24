rm(list = ls())

# Question 1

mydata <- read.csv("bike_sharing.csv", row.names = 1, header = TRUE)
# mydata <- read.csv("bike_sharing.csv", header = TRUE)
# mydata <- read.csv("HospitalDischarge_ILIA.csv", 
#                stringsAsFactors = FALSE,
#                colClasses = c("integer", "character", "NULL", "character", 
#                               "factor", "factor", "integer", "numeric"))

mydata %>% head


# head & tail function
a <- c(1, 10, 100, 1000, 10000)

head(a, 10)
tail(a, 10)

# calculate difference
tail(a, -1) - head(a, -1)
a[-1] - a[-length(a)]

# column name change
names(mydata)[names(mydata) == "dteday"] <- "date"
mydata$season %>% unique()

# column type change
mydata$date <- as.Date(mydata$date)
mydata$season <- as.factor(mydata$season)
mydata$yr <- as.factor(mydata$yr)
mydata$hr <- as.factor(mydata$hr)

# change values using 
levels(mydata$yr) <- c("2011", "2012")
mydata$yr

levels(mydata$season) <- c("spring", "summer", "summer", "fall", "winter")
levels(mydata$season)[1:2] <- c("mylevel1", "mylevel2")

levels(mydata$hr) <- c(23:0)

# delete column
mydata$temp <- NULL

# mean with NA
mydata$windspeed %>% mean(na.rm = TRUE)
mean(mydata$windspeed, na.rm = TRUE)

# remove NAs in dataframe
mydata1 <- na.omit(mydata)
mydata2 <- mydata[complete.cases(mydata),]

# delete NAs with complete.cases
a <- matrix(c(1:20), nrow = 4)
colnames(a) <- c("v1", "v2", "v3", "v4", "v5")
a[2, 4] <- NA
a
complete.cases(a)
a[complete.cases(a), ]


a[3, 2] <- NA
a[complete.cases(a[,"v2"]), ]

c(1, 0, 1) * c(0, 1, 1)

# Picking complete cases at specific column
mydata[complete.cases(mydata$registered) & 
         complete.cases(mydata$windspeed), ]

# update at the remote
a <- c(1:3)
b <- b(1:5)