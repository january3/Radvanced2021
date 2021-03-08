add_two <- function(first_value, second_value=2) { 
  result <- first_value + second_value
  return(result)
}


read_gene_counts <- function(whatever) {
  
  message("The file I am about to read is called ", whatever)
  
  ### how many files are in "whatever"
  
  ### read all of the filesaaa
  
  ### put together all of the files
  
  result <- #### ....?????.....
  
  return(result)
}


  f1 <- "../Datasets/star.SAMN15934930.all_mates.gene_counts.tab"
  f2 <- "../Datasets/star.SAMN15934977.all_mates.gene_counts.tab"
  f3 <- "../Datasets/star.SAMN15935042.all_mates.gene_counts.tab"
  
  f1_df <- read.table(f1)
  f2_df <- read.table(f2)
  f3_df <- read.table(f3)
  
  results <- cbind(f1_df, f2_df, f3_df)


read_gene_counts <- function(fnames) {
  
  f1_df <- read.table(fnames[1])
  
  for(fn in fnames[-1]) {
    df <- read.table(fn)
    f1_df <- cbind(f1_df, df[ , 2])
  }
  
  return(f1_df)
}





