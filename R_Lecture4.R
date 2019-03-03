library(dplyr)

# Sample from vector
sample(3, 10, replace = TRUE) # 1~3 pick elements randomly
sample(30, 10, replace = FALSE) # 1~30 pick elements randomly w/o redundant
sample(20:40, 10, replace = TRUE)
sample(seq(0, 1, by = 0.2), 10, replace = TRUE)


# Rounding numbers
round(0.567, 1)
floor(0.567*10)/10
ceiling(0.567*10)/10


# Data frame 
set.seed(123)
mydata <- data.frame(class = sample(3, 10, replace = TRUE),
                     std_number = sample(30, 10, replace = FALSE),
                     midterm = as.integer(rnorm(10, mean = 80, sd = 5)),
                     final = as.integer(rnorm(10, mean = 70, sd = 7)))

mydata %>% head

# Sorting
arrange(mydata, class)
arrange(mydata, class, std_number) # ording class first, std_num second
arrange(mydata, class, desc(std_number))

# Filtering
filter(mydata, class == 1)
filter(mydata, class == 1 | class == 2)
filter(mydata, class %in% c(2, 3))
filter(mydata, class %in% c(2, 3), std_number > 10)
filter(mydata, class %in% c(2, 3), std_number > 10 & std_number < 15)


# Select columns
select(mydata, class, midterm, final)
select(mydata, class, midterm, final, std_number)
select(mydata, std_number, everything())
select(mydata, -final)


names(mydata)[4] <- "midterm2"
select(mydata, starts_with("mid"))
select(mydata, starts_with("mid"), everything())
select(mydata, std_number:midterm)
select(mydata, std_number:midterm, class)

# Connect with pipe
mydata %>% 
    arrange(class) %>% 
    select(-std_number) %>% 
    filter(midterm2 > 60) %>% 
    rename(final = midterm2) -> mydata2


# make a new column with Mutate
mydata %>% 
    mutate(total = midterm + midterm2) %>% 
    mutate(average = total / 2) %>% 
    mutate(grade = ifelse(average > 75, "A", "B"))

mydata %>% 
    mutate(total = midterm + midterm2) %>% 
    mutate(average = total / 2) %>% 
    rowwise() %>% 
    mutate(grade = make_grade(average))

make_grade <- function(aver_score){
    if (aver_score > 74){
        "A"
    } else if (aver_score < 74 & aver_score > 72) {
        "B"
    } else {
        "C"
    }
}


# make summary with summarise
mydata %>% summarise(midterm_aver = mean(midterm),
                     midterm2_aver = mean(midterm2))
mydata %>% 
    group_by(class) %>% 
    summarise(midterm_aver = mean(midterm),
              midterm2_aver = mean(midterm2))
