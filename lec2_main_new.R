source(file.path(".",'/','lec2_func.r'))
sin.period(period=1)
sin.period(2)

xx <- rnorm(n=100, mean=0, sd=1)
stats <- compute.stat(xvec=xx)
print(stats)
print(stats$sd)
