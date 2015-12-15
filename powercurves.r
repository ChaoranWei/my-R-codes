p = seq(0,20,length = 200)
power = pnorm(7.387, p, 4/3 ) + 1 - pnorm(12.6133, p, 4/3)

plot(p, power, type = "l") #4.2(b)


p = seq(0,20,length = 200)
power = pnorm(9.216, p, 4/10 ) + 1 - pnorm(10.784, p, 4/10)

plot(p, power, type = "l") #4.2(b)

p = seq(0,1,length = 100)
power = pbinom(40, 100, p ) + 1 - pbinom(59, 100, p)

plot(p, power, type = "l") #4.13

p = seq(0,5,length = 100)
power = (1-0.8^p)^2
plot(p, power, type = "l") #4.21