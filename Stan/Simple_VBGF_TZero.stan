data {
  int<lower=0> N; //number of samples
  
  //data vectors
  vector<lower=0> [N]Age;
  vector<lower=0> [N]Length;
  
  //prior data
  real<lower=0> linf_mean;
  real<lower=0> linf_var;
  real<upper=0> t0_mean;
  real<lower=0> t0_var;
  real<lower=0> k_prior;
}

parameters {
  real<lower=0> LInf;
  real<lower=0> k;
  real<upper=0>tZero;
  
  //likelihod parameter
  real <lower = 0> sigma;
  }
  


model {
  //storage
  vector[N] PredL;
  //VBGM priors
  LInf ~ normal(linf_mean, linf_var);
  k ~ uniform(0, k_prior);
  tZero ~ normal(t0_mean, t0_var);
  
  sigma ~ uniform(0, 100);
  
  //VBGM likelihood
  for(i in 1:N){
    PredL[i] = LInf*(1-exp(-k*(Age[i]-tZero)));
    target += normal_lpdf(Length[i]|PredL[i], sigma); //likelihood
  }
  
  }

//individual ikelihoods for loo
generated quantities {
    vector[N] log_lik;
    for (i in 1:N) {
      log_lik[i] = normal_lpdf(Length[i]|LInf*(1-exp(-k*(Age[i]-tZero))), sigma);
    }
}