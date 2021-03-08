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

## Function for reading gene counts from STAR aligner files
read_gene_counts <- function(fnames) {
  
  # results will hold the resulting data frame
  # we ininitalize it with the first file
  results <- read.table(fnames[1])
  
  # read all the *remaining* files
  for(fn in fnames[-1]) {
    df <- read.table(fn)
    results <- cbind(results, df[ , 2])
  }
  
  # results should have now 1 ID column and as 
  # many value columns as there were files
  return(results)
}

#fnames <- list.files(directory)
files <- c(f1, f2, f3)
read_gene_counts(files)


