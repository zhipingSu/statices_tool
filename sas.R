table <- function(x,decreasing=T){
  x=base::table(x)
  x=as.data.frame(x)
  x[,3]=x$Freq/sum(x$Freq)*100
  rownames(x)=x[,1]
  x=x[,-1]
  colnames(x)=c("freq","per")
  if (decreasing==T) {
    x=x[order(x$per, decreasing= T), ]
  }
  return(x)
}
 

