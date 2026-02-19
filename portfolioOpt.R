install.packages("quadprog")
library(quadprog)



solve.QR(Dmat, dvec, Amat, bvec, meq)

# Dmat is covarnace matrix




# quadprog expects 0.5 * x' * D * x, so we pass 2 * Sigma
result <- solve.QP(
  Dmat = 2 * Dmat,
  dvec = dvec,
  Amat = Amat,
  bvec = bvec,
  meq = 1 
)
