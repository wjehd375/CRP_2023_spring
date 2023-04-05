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

