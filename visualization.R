#methods I know: lwd: size main: title dimnames: a list of dimension titles
#rownames: assign row names to data names pch: shape of dots ylim: range of y
#ylab: label of y beside = TRUE: horiz/verti round: rounding the numbers
set.seed(1410)

y <- matrix(runif(30),ncol=3,dimnames = list(letters[1:10],LETTERS[1:3]))

#plot of two columns of y
plot(y[,1],y[,2])


#pairwise plot of y
pairs(y)

#with labels
plot(y[,1],y[,2], pch = 8, col = 'red',lwd = 4, main = 'noise data')
text(y[,1] + 0.03, y[,2], rownames(y))
#line plot note: type is L not one
plot(y[,1],type = 'l', lwd = 2, col = 'blue')

#many dataset on one screen
split.screen(c(1,1))

plot(y[,1],ylim = c(0,1),ylab = 'A', xlab = 'B',type = 'l',lwd = 2,col = 1)

for (i in 2:length(y[1,])) {
    screen(1, new = FALSE)
    plot(y[,i],ylim = c(0,1),type = 'l',lwd = 2,col =  i,
         ylab = '', xlab = '', main = 'aa',bty='n')
}
close.screen(all = TRUE)

#barplot

barplot(y[1:4,], ylim = c(0,max(y[1:4,]) + 0.3), beside = TRUE,legend = letters[1:4])
text(labels = round(as.vector(as.matrix(y[1:4,])),2), x=seq(1.5, 13, by = 1)
     + sort(rep(c(0,1,2),4)), y = as.vector(as.matrix(y[1:4,])) + 0.04)



