# QuadraticProgrammingPortfolioOpt
Portfolio optimization with quadratic optimization in R

### Background:

We use the following model:

$$
min -w'*E(r) \lambda \cdot w \cdot \Omega \cdot w'
$$
$$
s.t. (subject to) lb \leq w \leq 0.05
$$

$$
\sum w = 100 \%
$$
$$
0.5 \leq w' \cdot B \leq 1.1
$$

**Here:**
- **w** = Vector of portfolio weights (allocations to each asset)
- **w'** = Transpose of the weight vector
- **E(r)** = Vector of expected returns for each asset
- **λ (lambda)** = Risk aversion parameter (higher values = more risk-averse)
- **Ω (Omega)** = Covariance matrix of asset returns (measures risk/volatility)
- **-w' E(r)** = Negative expected return (we minimize this to maximize returns)
- **w' Ω w** = Portfolio variance (risk measure)


## Using packages:
- quadprog

### Sources:

- https://www.youtube.com/watch?v=aYi-mCsNC08
- https://www.abiranalytic.com/mv-optimization


