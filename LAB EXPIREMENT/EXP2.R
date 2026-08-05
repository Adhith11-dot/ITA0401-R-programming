# 5 x 4 matrix (row-wise)
m1 <- matrix(1:20,
             nrow=5,
             ncol=4,
             byrow=TRUE,
             dimnames=list(
               paste("R",1:5,sep=""),
               paste("C",1:4,sep="")
             ))

print(m1)

# 3 x 3 matrix (column-wise)
m2 <- matrix(1:9,
             nrow=3,
             byrow=FALSE,
             dimnames=list(
               c("A","B","C"),
               c("X","Y","Z")
             ))

print(m2)

# 2 x 2 matrix
m3 <- matrix(c(10,20,30,40),
             nrow=2,
             byrow=TRUE,
             dimnames=list(
               c("Row1","Row2"),
               c("Col1","Col2")
             ))

print(m3)