
set.seed(RNG_seed)

# Make data ---------------------------------------------------------------

income_breaks <- quantile(x = 0:1)

clusters <- remaindr(numerator = N,J)

data <- data.frame(
  Y       = rnorm(N),
  income  = cut(x = abs(runif(N)),breaks = income_breaks),
  assets  = rpois(n = N,lambda = 4),
  cluster = sample(rep(1:length(clusters),clusters))
)

# Output ------------------------------------------------------------------

write.csv(data,"01_Data/data.csv")

rm(N,J,income_breaks)
