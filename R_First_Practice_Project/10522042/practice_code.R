# Here, I practice with data types and dates.

# Here is a variable
first_variable <- "This is my variable."
second_variable <- 12.5
vec_1 <- c(13, 48.5, 71, 101.5, 2)

today()
now()
ymd("2025-06-24")
mdy("June 24th, 2025")
dmy("24-Jun-2025")
ymd(20250624)
ymd_hms("2025-06-24 16:25:00")

z <- data.frame(x = c(1, 2, 3), y = c(1.5, 5.5, 7.5))
z[2,1]

file.create("new_csv_file.csv")
unlink("new_csv_file.csv")

matrix(c(3:8), nrow = 2)
matrix(c(3:8), ncol = 2)
