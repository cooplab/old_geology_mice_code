

##http://www.vertnet.org/
###data downloaded May 2nd 2014, searched for Chaetodipus intermedius

 my.data<-read.delim("~/Downloads/MyResults-250728d232cf4d8fa0f7aef07e0bce5c.txt",as.is=TRUE)

 map("state",xlim=c(-120,-90),ylim=c(25,40));map(add=TRUE)
 points(my.data[,"decimallongitude"],my.data[,"decimallatitude"],pch=19,col=adjustcolor("blue",0.1),cex=.2)
 
 ##how many with sensible co-ordinates
 sum(-120 < my.data[,"decimallongitude"]  & my.data[,"decimallongitude"] < -90 &   25 < my.data[,"decimallatitude"] & my.data[,"decimallatitude"] < 40,na.rm=TRUE)