# examples

# load function directly from github
source("https://raw.githubusercontent.com/epongpipat/Research_Methods/master/orthogonal-contrast-code-check/OrthogonalContrastCodeCheck.R")

# fail step 0 - contrast/dfs are incorrect
OrthogonalContrastCodeCheck(cbind(c1=c(1,2,3),c2=c(-1,0,1),c3=c(-2,1,1)))
OrthogonalContrastCodeCheck(cbind(c1=c(1,2,3),c2=c(-1,0,1),c3=c(-2,1,1),c4=c(-2,1,1),c5=c(-2,1,1)))

# fail step 1 - not orthogonal 
OrthogonalContrastCodeCheck(contr.treatment(2))
OrthogonalContrastCodeCheck(contr.treatment(3))
OrthogonalContrastCodeCheck(contr.treatment(4))
OrthogonalContrastCodeCheck(contr.treatment(5))
OrthogonalContrastCodeCheck(contr.treatment(6))
OrthogonalContrastCodeCheck(contr.treatment(7))
OrthogonalContrastCodeCheck(contr.treatment(8))
OrthogonalContrastCodeCheck(contr.treatment(9))
OrthogonalContrastCodeCheck(contr.treatment(10))

# fail step 2 - not orthogonal
OrthogonalContrastCodeCheck(contr.sum(2))
OrthogonalContrastCodeCheck(contr.sum(3))
OrthogonalContrastCodeCheck(contr.sum(4))
OrthogonalContrastCodeCheck(contr.sum(5))
OrthogonalContrastCodeCheck(contr.sum(6))
OrthogonalContrastCodeCheck(contr.sum(7))
OrthogonalContrastCodeCheck(contr.sum(8))
OrthogonalContrastCodeCheck(contr.sum(9))
OrthogonalContrastCodeCheck(contr.sum(10))

# orthogonal
OrthogonalContrastCodeCheck(contr.poly(2))
OrthogonalContrastCodeCheck(contr.poly(3))
OrthogonalContrastCodeCheck(contr.poly(4))
OrthogonalContrastCodeCheck(contr.poly(5))
OrthogonalContrastCodeCheck(contr.poly(6))
OrthogonalContrastCodeCheck(contr.poly(7))
OrthogonalContrastCodeCheck(contr.poly(8))
OrthogonalContrastCodeCheck(contr.poly(9))
OrthogonalContrastCodeCheck(contr.poly(10))

OrthogonalContrastCodeCheck(contr.helmert(2))
OrthogonalContrastCodeCheck(contr.helmert(3))
OrthogonalContrastCodeCheck(contr.helmert(4))
OrthogonalContrastCodeCheck(contr.helmert(5))
OrthogonalContrastCodeCheck(contr.helmert(6))
OrthogonalContrastCodeCheck(contr.helmert(7))
OrthogonalContrastCodeCheck(contr.helmert(8))
OrthogonalContrastCodeCheck(contr.helmert(9))
OrthogonalContrastCodeCheck(contr.helmert(10))

OrthogonalContrastCodeCheck(cbind(linear=c(-1,0,1),quadratic=c(1,-2,1)))
