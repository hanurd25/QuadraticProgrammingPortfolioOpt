# QuadraticProgrammingPortfolioOpt
Portfolio optimization with quadratic optimization in R

### Background:
A model to find optimal asset allocations (%) by minimizing portfolio risk while maximizing expected returns, subject to investment constraints. Here we are using quadratic programming to balance the trade-off between expected returns and portfolio volatility, based on previously calculated expected returns and the covariance matrix of asset returns.



We use the following model:

$$
min \quad -w^T *E(r) + \lambda \cdot w \cdot \Omega \cdot w^T
$$
$$
s.t.\text{ (subject to)} lb \leq w \leq up
$$

$$
\sum w = 100 \%
$$
$$
0.5 \leq w^T \cdot B \leq 1.1
$$

**Here:**
- **w** = Vector of the weight of every asset in portfolio
- **E(r)** = Vector of expected returns for each asset
- **λ** = Risk aversion parameter (higher values yields more risk-averse)
- **Ω** = Covariance matrix of asset returns (measures risk/volatility)
- **-w' E(r)** = Negative expected return (what we want to minimize to maximize returns)
- **w' Ω w** = Portfolio variance (risk measure)
- **lb** and **up** is the lower and upper bounds of portfolio weighting


## Using packages:
- quadprog

### Sources:

- https://www.youtube.com/watch?v=aYi-mCsNC08
- https://www.abiranalytic.com/mv-optimization


