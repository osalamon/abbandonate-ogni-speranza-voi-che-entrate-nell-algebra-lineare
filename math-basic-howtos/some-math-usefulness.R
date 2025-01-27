library(matlib)

# Maths Nitty Witty Misc

## Indexing each matrices variable element

A <- matrix(
  paste0(
    "a_{",
    outer (1:4, 1:4, FUN = paste0),
    "}"
  ), nrow = 4
)
# outer(X, Y, FUN = "*", ...) => X a Y jsou argumenty
# fce FUN => ta se pouzije na VNEJSI NASOBKY
colnames(A) <- paste0('x', 1:4)
rownames(A) <- paste0(1:4)

A


b <- paste0("b_", 1:4)
x <- paste0("x", 1:4)
showEqn(A, b, vars = x, latex=TRUE)