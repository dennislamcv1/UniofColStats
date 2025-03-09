# Vectors and Matrices

d <- 5
d

x <- c(12,17,24,8,22) # Make a simple vector of numbers
length(x)
x[1]
x[4]
a <- x[2:3]
x[-2]
x[-c(3,4)]
rev(x)

v <- 1:10
v
w <- 20:1
w
s <- seq(1,3,0.2)
s
rep(seq(1,3,1),5)

dwarfs <- c("Sleepy","Dopey","Doc","Grumpy","Happy","Bashful","Sneezy")
dwarfs
dwarfs[-4]
dwarfs!="Grumpy"
dwarfs[dwarfs!="Grumpy"]
dwarfs <- dwarfs[dwarfs!="Grumpy"]
dwarfs
dwarfs <- c(dwarfs,"Grumpy")
dwarfs

x <- c(1,2,3)
y <- c(4,5,6)
z <- c(7,8,9)
A <- matrix(c(x,y,z))
A
length(A)
dim(A) <- c(3,3)
A
dim(A)

B <- matrix(c(x,y,z),nrow=3,ncol=3)
B
C <- matrix(c(x,y,z),nrow=3,ncol=3,byrow=TRUE) # Creates 3x3 array
C

A
A[3]
A[7]
A[3,]
A[2,3]
A[,2]
A[2:3,1:2]
A[c(1,3),]
A[c(1,3),2:3]

x
y
z
D <- cbind(x,y,z)
D
rownames(D) <- c("Jim","George","Liz")
D
D[2,3]
D["George","z"]

E <- rbind(x,y,z)
E
q <- c("blue","red","green")
colnames(E) <- q
E
E[3,1]
E["z","blue"]

t(E)

edit(E)
E
E <- edit(E)
E
fix(E)
E
