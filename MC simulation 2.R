nrep = 10000

n = 10
count = 0

for (i in 1:nrep) {
  temp = 2* (runif(10))^0.5
  if (mean(temp) > 1.6) {
    count = count + 1
  }
}

count

