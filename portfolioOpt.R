install.packages("quadprog")
library(quadprog)


# in this scenario we are working with 5 stocks.
er <- c(0.10, 0.20, 0.15, 0.25, 0.18)  # Expected returns 
omega <- matrix(c(
  0.005, -0.010, 0.004, -0.002,  0.003,
 -0.010,  0.040, -0.005,  0.000, -0.006,
  0.004, -0.005,  0.015,  0.010,  0.004,
 -0.002,  0.000,  0.010,  0.020, -0.001,
  0.003, -0.006,  0.004, -0.001,  0.012
), nrow=5, byrow=TRUE) # Excample covariance matrix
#R has simple ways to construct these as well with data scraping

nAssets <- length(er)





lambda <- 3
# adding 2 because quadprog expects 0.5 factor
Dmat <- 2 * lambda * omega
dvec <- -er


Amat <- cbind(
  rep(1, nAssets),      # sum of assets = 1 (100%)
  diag(nAssets),        # w >= 0  %can't be under 0
 -diag(nAssets)        # w <= s
)
#setting constraints
#assuming here that every asset should have the same constraints
#Reduce the first number below 1 when we don't want to be fulli invested
bvec <- c(1, rep(0, nAssets), rep(0.2, nAssets))
meq <- 1  


result <- solve.QP(Dmat, dvec, Amat, bvec, meq=meq)


weights <- result$solution
#Weights
print(round(weights * 100, 1))  


portfolioReturn <- sum(weights * er) * 100
portfolioRisk <- sqrt(weights %*% omega %*% weights) * 100 * sqrt(252)  

print(paste("Expected portfolio return:", round(portfolioReturn, 2), "%"))
print(paste("Portfolio Risk (Ann Vol):", round(portfolioRisk, 2), "%"))



