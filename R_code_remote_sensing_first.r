# My first code in R for remote sensing!

# install.packages("raster")
library(raster)
setwd("C:/lab/")
p224r63_2011 <- brick("p224r63_2011_masked.grd")
p224r63_2011

# plot the bands
plot(p224r63_2011)

# colour change
cl <- colorRampPalette(c("black","grey","light grey")) (100) 
plot(p224r63_2011, col=cl)


## DAY 2

 # colour change -> new
cl <- colorRampPalette(c("blue","green","grey","orange","magenta","yellow")) (100) 
plot(p224r63_2011, col=cl)

# Bands of Landsat
# B1: blue
# B2: green
# B3: red
# B4: near infrared
# B5: middle infrared
# B6: thermal infrared
# B7: middle infrared

# dev.off will clean the current graph
dev.off()


## DAY 3

# plot band 1 with a predefined color ramp palette
plot(p224r63_2011$B1_sre)
cls <- colorRampPalette(c("red","pink","orange","purple")) (200)
plot(p224r63_2011$B1_sre, col=cls)
dev.off()

# plot 1 row, 2 columns 
plot(p224r63_2011$B1_sre)
plot(p224r63_2011$B2_sre)    
par(mfrow=c(1,2))
plot(p224r63_2011$B1_sre)
plot(p224r63_2011$B2_sre)

# 2 row, 1 columns
par(mfrow=c(2,1))
plot(p224r63_2011$B1_sre)
plot(p224r63_2011$B2_sre)

# plot the first four bands of Landsat
par(mfrow=c(4,1))
plot(p224r63_2011$B1_sre)
plot(p224r63_2011$B2_sre)
plot(p224r63_2011$B3_sre)
plot(p224r63_2011$B4_sre)

# plot a quadrat of bands
par(mfrow=c(2,2))
plot(p224r63_2011$B1_sre)
plot(p224r63_2011$B2_sre)
plot(p224r63_2011$B3_sre)
plot(p224r63_2011$B4_sre)

# plot  a quadrat of bands and colour change
par(mfrow=c(2,2))
clb <- colorRampPalette(c("dark blue","blue","light blue")) (100)
plot(p224r63_2011$B1_sre, col=clb)
clg <- colorRampPalette(c("dark green","green","light green")) (100)
plot(p224r63_2011$B2_sre, col=clg)
clr <- colorRampPalette(c("dark red","red","pink")) (100)
plot(p224r63_2011$B3_sre, col=clr)
clnir <- colorRampPalette(c("red","orange","yellow")) (100)
plot(p224r63_2011$B4_sre, col=clnir)
 dev.off()

## DAY 4

