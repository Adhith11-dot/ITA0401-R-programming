arr <- array(1:24,
             dim=c(3,4,2),
             dimnames=list(
               Row=c("R1","R2","R3"),
               Col=c("C1","C2","C3","C4"),
               Table=c("T1","T2")
             ))

print(arr)