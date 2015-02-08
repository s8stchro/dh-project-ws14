library(ggplot2)
par14 <- read.csv("../../data/output/paul_freq_par/par14_frequency.csv", header=TRUE, sep="\t")
letters <- unique(par14$letter)
filename <- paste0("../../data/output/paul_R_par/plots/par14_lt69.png")
png(filename)
lt69 <- par14[which(par14$letter==69),]
lt69$perc_label[lt69$perc_label == 0] <- NA
lt69_count = sum(lt69$freq_t)
ymax <- max(lt69$freq_t)
ymax_s = ymax*1.1-ymax
title <- paste(lt69$particle[1], " (total_count = ", lt69_count,", letter =", 69,")" )
p_freq_t <- barplot(lt69$freq_t, main=title, xlab="Position", ylab= "Frequency" ,col=c("cyan4"), names.arg=lt69$position,ylim=c(0,ymax*1.2))
p_freq_s<- barplot(lt69$freq_s, col=c("darkgoldenrod1"),add=T)
legend("topright", inset=.05, c("position_from_pip","position_from_start"), fill=c("cyan4","darkgoldenrod1"))
text(p_freq_t, lt69$freq_t-(ymax_s/2), labels= lt69$freq_is, col="white")
text(p_freq_s, lt69$freq_s-(ymax_s/2), labels=lt69$freq_s, col="black")
text(p_freq_t, lt69$freq_t+ymax_s, labels=lt69$perc_label, col="blue",srt=90)

