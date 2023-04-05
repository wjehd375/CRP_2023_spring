myvar01 <- matrix(1:10, nrow=5, ncol=2)
myvar01
mytranspose(myvar01)
myvar01[1,2] == mytranspose(myvar01)[2,1] #TRUE
myvar01[2,1] == mytranspose(myvar01)[1,2] #TRUE
myvar01[3,1] == mytranspose(myvar01)[1,3] #TRUE
myvar01[4,2] == mytranspose(myvar01)[2,4] #TRUE
myvar01[5,2] == mytranspose(myvar01)[2,5] #TRUE
all.equal.raw((myvar01), mytranspose(mytranspose(myvar01))) #TRUE

myvar02 <- matrix(NA, nrow=0, ncol=0)
myvar02
mytranspose(myvar02)
all.equal.raw((myvar02), mytranspose(mytranspose(myvar02)), check.attributes = FALSE) #TRUE

myvar03 <- matrix(c(1,2), nrow=1, ncol=2)
myvar03
mytranspose(myvar03)
myvar03[1] == mytranspose(myvar03)[1] #TRUE
myvar03[2] == mytranspose(myvar03)[2] #TRUE
all.equal.raw((myvar03), mytranspose(mytranspose(myvar03))) #TRUE

myvar04 <- matrix(c(1,2), nrow=2, ncol=1)
myvar04
mytranspose(myvar04)
myvar04[1] == mytranspose(myvar04)[1] #TRUE
myvar04[2] == mytranspose(myvar04)[2] #TRUE
all.equal.raw((myvar04), mytranspose(mytranspose(myvar04))) #TRUE

myvar05 <- c(1,2,NA,3)
myvar05
mytranspose(myvar05)
myvar05[1] == mytranspose(myvar05)[1] #TRUE
myvar05[2] == mytranspose(myvar05)[2] #TRUE
myvar05[4] == mytranspose(myvar05)[4] #TRUE
all.equal.raw(as.numeric(myvar05), as.numeric(mytranspose(mytranspose(myvar05)))) #TRUE

myvar06 <- c(NA)
myvar06
mytranspose(myvar06)
all.equal.raw(as.numeric(myvar06), as.numeric(mytranspose(mytranspose(myvar06)))) #TRUE

myvar07 <- c()
myvar07
mytranspose(myvar07)
all.equal.raw((myvar07), mytranspose(mytranspose(myvar07))) #TRUE


d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE, TRUE, TRUE, FALSE)
myvar08 <- data.frame(d,e,f)

myvar08
mytranspose(myvar08)
myvar08[1,2] == mytranspose(myvar08)[2,1] #TRUE
myvar08[2,3] == mytranspose(myvar08)[3,2] #TRUE
myvar08[3,1] == mytranspose(myvar08)[1,3] #TRUE
myvar08[4,1] == mytranspose(myvar08)[1,4] #TRUE
myvar08[4,3] == mytranspose(myvar08)[3,4] #TRUE
all.equal.raw((myvar08), mytranspose(mytranspose(myvar08)), check.attributes = FALSE) #TRUE
