v <- c(10,20,30,40,50,60,70,80)

arr <- array(v,
             dim=c(2,2,2),
             dimnames=list(
               Row=c("R1","R2"),
               Col=c("C1","C2"),
               Table=c("T1","T2")
             ))

print(arr)

cat("Element R2 C2 T1 =", arr["R2","C2","T1"], "\n")
cat("Element R1 C1 T2 =", arr["R1","C1","T2"], "\n")