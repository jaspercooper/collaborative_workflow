# Make data ---------------------------------------------------------------

N <- 100

data <- data.frame(
  Y = rnorm(N),
  income = cut(x = abs(runif(N)),breaks = income_breaks),
  assets = rpois(n = N,lambda = 4)
)

# Output ------------------------------------------------------------------

write.csv(data,"01_Data/data.csv")

rm(N,income_breaks)
