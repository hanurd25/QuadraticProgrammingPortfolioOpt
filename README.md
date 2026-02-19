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
\Sigma w = 100 \%
$$
$$
0.5 \leq w' \cdot B \lew 1.1
$$

## Using packages:
- quadprog

### Sources:

- https://www.youtube.com/watch?v=aYi-mCsNC08
- https://www.abiranalytic.com/mv-optimization


