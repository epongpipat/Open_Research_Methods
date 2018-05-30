# Check to determine if contrast code set of categorical vairables is orthogonal.
OrthogonalContrastCodeCheck = function(contrast_list) {
  library(dplyr)
  k <- as.numeric(nrow(contrast_list))
  contrast_number <- as.numeric(ncol(contrast_list))
  cat("\n0. Does the number of contrasts equal the number of conditions minus 1?")
  if ( contrast_number == k-1 ) {
    cat("\nPass\n")
  } else {
    cat("\n\nFailed at step 0, the number of contrasts does not equal the number of conditions minus 1.")
    cat("\nNumber of levels:")
    cat("\n",k)
    cat("\n\nNumber of contrasts:")
    cat("\n",contrast_number)
    return(cat(""))
  }
  cat("\n1. Does the sum of each contrast equal zero?")
  contrast_list.sum <- apply(contrast_list, 2, sum)
  if ( near(sum(contrast_list.sum),0) ) {
    cat("\nPass\n")
  } else {
    cat("\n\nFailed at step 1, the contrast code set is not orthogonal.\n")
    cat("\nContrasts:\n")
    print(contrast_list)
    cat("\nSum of Contrasts:\n")
    print(contrast_list.sum)
    return(cat(""))
  }
  if ( contrast_number < 2 ) {
    return(cat(""))
  }
  cat("\n2. Does the sum of each product contrast pair equal zero?")
  for (valueA in c(1:contrast_number)) {
    if (valueA < contrast_number) {
      next_contrast <- valueA+1
      if (next_contrast <= contrast_number) {
        for ( valueB in c(next_contrast:contrast_number)) {
          contrast_product <- as.data.frame(contrast_list[,valueA]*contrast_list[,valueB])
          colnames(contrast_product) <- paste(colnames(contrast_list)[valueA],"*",colnames(contrast_list)[valueB],sep="")
          if ( valueA == 1 && valueB == 2 ) {
            contrast_product_list <- contrast_product
          } else {
            contrast_product_list <- cbind(contrast_product_list,contrast_product)
          }
        }
      }
    }
  }
  contrast_product_list.sum <- apply(contrast_product_list, 2, sum)
  if ( near(sum(contrast_product_list),0) ) {
    cat("\nPass")
  } else {
    cat("\n\nFailed at step 2, the contrast code set is not orthogonal.\n")
    cat("\nProduct of Contrast Pairs\n")
    print(contrast_product_list)
    cat("\nSum of Product of Contrast Pairs\n")
    print(contrast_product_list.sum)
    return(cat(""))
  }
}

