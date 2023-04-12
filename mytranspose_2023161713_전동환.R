mytranspose <- function(x){
  if(is.null(x)==FALSE){
    value <- x
    x <- as.matrix(x)
    y <- matrix(1, nrow = ncol(x), ncol = nrow(x))
    for(i in 0:nrow(x)){
      for(j in 0:ncol(x)){
        y[j,i] <- x[i,j]
      }
    }
    if(is.vector(value))
      return(cbind(y))
    else if(is.data.frame(value))
      return(as.data.frame(y))
    else
      return(y)
  }
  else
    return(x)
}