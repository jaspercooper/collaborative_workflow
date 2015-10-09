# Output plot of Y ~ income -----------------------------------------------

pdf("03_Paper/figures/boxplot.pdf",width = 8,height = 5)
with(data,plot(x = income,y = Y))
dev.off()


