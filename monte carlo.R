#simulate sum of three U(0,1)

nrep = 100000


n = 3
count = 0
for (i in 1:nrep) {
  Y = sample(x = c(1,2,3,4), n, replace = F, prob = c(0.1, 0.2, 0.3, 0.4))
  if (1 %in% Y && 2 %in% Y) {
    count = count + 1
  }
}



