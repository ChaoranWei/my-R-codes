nrep = 10000
n = 7
count = 0
for (i in 1:nrep) {
  temp = rexp(7,1)
  temp = temp[order(temp)]
  if (temp[4]*0.465 <0.693 && temp[4]*2.72 > 0.693) {
    count = count + 1
  }
}

count/nrep