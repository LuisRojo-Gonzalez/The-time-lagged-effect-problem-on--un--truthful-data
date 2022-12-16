data{
  int<lower = 0> N;
  int<lower = 0> s[N];
  int<lower = 0> r[N];
  int<lower = 0> d[N];
  // ---- intensities -----
  // sick
  real<lower = 0> alphas;
  real<lower = 0> betas;
  // recovered
  real<lower = 0> alphar;
  real<lower = 0> betar;
  // death
  real<lower = 0> alphad;
  real<lower = 0> betad;
  // ---- elapsed time -----
  // sick
  real<lower = 0> alphats;
  real<lower = 0> betats;
  // recovered
  real<lower = 0> alphatr;
  real<lower = 0> betatr;
  // death
  real<lower = 0> alphatd;
  real<lower = 0> betatd;
}

parameters{
  // ---- intensities -----
  real<lower = 0> lambdas; // sick
  real<lower = 0> lambdar; // recovered
  real<lower = 0> lambdad; // death
  // ---- elapsed time -----
  real<lower = 0> ts; // sick
  real<lower = 0> tr; // recovered
  real<lower = 0> td; // death
}

model{
  for (i in 1:N) {
    s[i] ~ poisson(lambdas*ts); // likelihood sick
    r[i] ~ poisson(lambdar*tr); // likelihood recovered
    d[i] ~ poisson(lambdad*td); // likelihood death
  }
  // ---- intensities -----
  lambdas ~ gamma(alphas, betas); // prior for lambda sick
  lambdar ~ gamma(alphar, betar); // prior for lambda recover
  lambdad ~ gamma(alphad, betad); // prior for lambda death
  // ---- elapsed time -----
  ts ~ gamma(alphats, betats); // prior for elapsed time sick
  tr ~ gamma(alphatr, betatr); // prior for elapsed time recover
  td ~ gamma(alphatd, betatd); // prior for elapsed time death
}
