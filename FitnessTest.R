puppy = c(8,4,6,3,5,7,8,10,5,14,7,9,8,5,8,9,5,7,6,9,8,6,6,4,8);
hist(puppy)

x = 1:20
p = 0.9564
logfunction = p^x / (x*log(1/(1 - p))) * 100;
lines(logfunction)

pois = 7^x*exp(-7) / (factorial(x)* (1-exp(-7))) * 60
lines(pois)
l = 60.6936
mu = 7
inv = (l/(2*pi*x^3)) * exp(-l*(x - mu)^2 / (2*mu^2*x)) * 200;
lines(inv)