# Clustered standard error calculator

cl.se   <- function(dat,fm, cluster){
  require(sandwich, quietly = TRUE)
  require(lmtest, quietly = TRUE)
  M <- length(unique(cluster))
  N <- length(cluster)
  K <- fm$rank
  dfc <- (M/(M-1))*((N-1)/(N-K))
  uj  <- apply(estfun(fm),2, function(x) tapply(x, cluster, sum,na.rm=TRUE));
  vcovCL <- dfc*sandwich(fm, meat=crossprod(uj)/N)
  as.matrix(coeftest(fm, vcovCL) )[,"Std. Error"]}

# Function for doing division

remaindr <- function(numerator,denominator) {
  m_each <- rep(numerator %/% denominator, denominator)
  remainder <- numerator %% denominator
  m_each <-
    m_each + ifelse(1:denominator %in% sample(1:denominator, remainder), 1, 0)
  return(m_each)
}