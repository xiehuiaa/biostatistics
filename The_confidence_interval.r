  mu = 32.3
  sd = 6.13
  n = 20
  m.max = 50
  
  set.seed(37823)
  bar.x = c()
  for(i in 1:m.max){
    x = rnorm(n, mean=mu, sd=sd)
    bar.x = c(bar.x, mean(x))
  }
  dta.conf = data.frame(x.left = bar.x-2*sd/sqrt(n), x.right=bar.x + 2*sd/sqrt(n), y=1:m.max) 
  dta.conf %>% ggplot(aes(x=x.left, xend=x.right, y=y, yend=y)) + geom_segment() + geom_vline(xintercept=mu, col="blue")
  
