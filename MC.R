nrep = 1000
nrep2 = 100
S =numeric(nrep)
for (i in 1:nrep) {
  temp1 = runif(1)
  temp2 = runif(1, 0, 2)
  S[i] = (temp1 - temp2)^2/2
  
}

var(S)