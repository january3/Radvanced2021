timestamp()
##------ Mon Mar  8 12:08:59 2021 ------##
savehistory()
add_two <- function(first_value, second_value) { result <- first_value + second_value ; return(results)}
add_two <- function(first_value, second_value) {
result <- first_value + second_value
return(results)
}
add_two(1, 2)
return(result)
add_two <- function(first_value, second_value) {
result <- first_value + second_value
return(result)
}
add_two(1, 2)
add_two <- function(first_value, second_value=2) {
result <- first_value + second_value
return(result)
}
add_two(1, 2
add_two(1)
read_gene_counts <- function(fnames) {
message("The file I am about to read is called ", fnames)
}
read_gene_counts("star.asdfasdfasdfasdf.txt")
source('~/.active-rstudio-document', echo=TRUE)
f1 <- "star.SAMN15934930.all_mates.gene_counts.tab"
f2 <- "star.SAMN15934977.all_mates.gene_counts.tab"
f3 <- "star.SAMN15935042.all_mates.gene_counts.tab"
f1_df <- read.table(f1)
f2_df <- read.table(f2)
f3_df <- read.table(f3)
results <- cbind(f1_df, f2_df, f3_df)
f1 <- "../Datasets/star.SAMN15934930.all_mates.gene_counts.tab"
f2 <- "../Datasets/star.SAMN15934977.all_mates.gene_counts.tab"
f3 <- "../Datasets/star.SAMN15935042.all_mates.gene_counts.tab"
f1_df <- read.table(f1)
f2_df <- read.table(f2)
f3_df <- read.table(f3)
results <- cbind(f1_df, f2_df, f3_df)
results
read_gene_counts <- function(fnames) {
f1_df <- read.table(fnames[1])
for(fn in fnames[-1]) {
df <- read.table(fn)
f1_df <- cbind(f1_df, df[ , 2])
}
}
debugonce(read_gene_counts)
fnames
f1
read_gene_counts(c(f1, f2, f3))
f1_df
fnames
debugonce(read_gene_counts)
read_gene_counts(c(f1, f2, f3))
head(f1_df)
fn
head(df)
head(f1_df)
head(f1_df)
read_gene_counts <- function(fnames) {
f1_df <- read.table(fnames[1])
for(fn in fnames[-1]) {
df <- read.table(fn)
f1_df <- cbind(f1_df, df[ , 2])
}
return(f1_df)
}
gcounts <- read_gene_counts(c(f1, f2, f3))
head(gcounts)
debug(read_gene_counts)
gcounts <- read_gene_counts(c(f1, f2, f3))
gcounts <- read_gene_counts(c(f1, f2, f3))
c+
undebug(read_gene_counts)
read_gene_counts <- function(fnames) {
f1_df <- read.table(fnames[1])
for(fn in fnames[-1]) {
df <- read.table(fn)
f1_df <- cbind(f1_df, df[ , 2])
}
browse()
return(f1_df)
}
gcounts <- read_gene_counts(c(f1, f2, f3))
read_gene_counts <- function(fnames) {
f1_df <- read.table(fnames[1])
for(fn in fnames[-1]) {
df <- read.table(fn)
f1_df <- cbind(f1_df, df[ , 2])
}
browser()
return(f1_df)
}
gcounts <- read_gene_counts(c(f1, f2, f3))#
head(f1_df)
res <- exp(42)
res
res <- try(exp(42))
res
res <- exp("forty two")
res <- try(exp("forty two"))
for(i in 1:2) {
exp(input[[i]])
}
for(i in 1:2) {
res <- exp(input[[i]])
message(res)
}
for(i in 1:2) {
res <- try(exp(input[[i]]))
message(res)
}
input <- list(a="forty two", b=42)
for(i in 1:2) {
res <- try(exp(input[[i]]))
message(res)
}
for(i in 1:2) {
res <- try(exp(input[[i]]))
if(inherits(res, "try-error")) {
warning("operation did not work")
} else {
message(res)
}
}
library(tmod)
?tmodUtest
add_two <- function(first_value, second_value=2) {
if(!is.numeric(first_value) && !is.numeric(second_value)) {
stop("I cannot add this")
}
first_value + second_value
}
add_two(42, "forty two")
add_two
add_two <- function(first_value, second_value=2) {
if(!is.numeric(first_value) || !is.numeric(second_value)) {
stop("I cannot add this")
}
first_value + second_value
}
add_two(42, "forty two")
min(c(1, 2, NA))
min(c(1, 2, NA), na.rm = TRUE)
res <- try(b <- "a" + 5)
res
class(res)
class(res) == "try-error"
add_two <- function(first_value, second_value=2) {
res <- try(first_value + second_value)
if(inherits(res, "try-error")) {
warning("Operation did not succeed")
return(NA)
}
return(res)
}
foo <- add_two(1, "forty two")
foo
add_two <- function(first_value, second_value=2) {
if(!is.numeric(first_value) || !is.numeric(second_value)) {
stop("I cannot add this")
}
result <- first_value + second_value + result
}
add_two(1, 5)
result <- 100
add_two(1, 5)
foo <- add_two(1, 5)
foo
result
add_two <- function(first_value, second_value=2) {
if(!is.numeric(first_value) || !is.numeric(second_value)) {
stop("I cannot add this")
}
result <<- first_value + second_value + result
return(result)
}
result
foo <- add_two(1, 5)
foo
result
"+"(1, 2)
1 + 2
vec <- 1:100
vec <- rnorm(10)
vec[3]
`[`(vec, 3)
set1 <- 1:10
set2 <- 1:3
diff(set1, set2)
setdiff(set1, set2)
%M% <- function(a, b) setdiff(a, b)
`%M%` <- function(a, b) setdiff(a, b)
set1 %M% set2
`%-%` <- function(a, b) setdiff(a, b)
set1 %-% set2
set2 %-% set1
1/0
f <- function(a=b) { b <- 17 ; print(a) }
f()
b
data("iris")
View(iris)
tapply(iris$Sepal.Length, iris$Species, mean)
tapply(iris$Sepal.Length, iris$Species, sd)
tapply(iris$Sepal.Length, iris$Species, median)
tapply(iris$Sepal.Length, iris$Species, function(x) {  max(x) - min(x) })
library(tidyverse)
iris %>% group_by(Species) %>%
summarise(median=median(Sepal.Width), mean=mean(Sepal.Width))
library(tidyverse)
iris %>% group_by(Species) %>%
summarise(median=median(Sepal.Width), mean=mean(Sepal.Width), range=max(Sepal.Width) - min(Sepal.Width))
0.1 * 10 * 3 / 3 == 1
3 / 3 * 0.1 * 10  == 1
3 * 0.1 / 3 * 10  == 1
3 * 0.1 / 3 * 10
3 * 0.1 / 3 * 10 - 1
mtcars
[,2:3]
mtcars[,2:3]
mtcars[,3]
matrix(1:9,nrow=3)
matrix(1:9,nrow=3)[,1]
matrix(1:9,nrow=3)[1,]
mtcars[1,]
mtcars$Model <- rownames(mtcars)
mtcars
mtcars[1,]
vector(mtcars[1,])
as.vector(mtcars[1,])
unlist(mtcars[1,])
as_tibble(mtcars)
as_tibble(mtcars)[ , 1]
setwd("~/Uczycielstwo/Physalia/Radvanced_2021/Radvanced2021/Datasets")
f1 <- "star.SAMN15934930.all_mates.gene_counts.tab"
file.exists(f1)
wide <- read.table(header=TRUE, text='
subject sex control cond1 cond2
1   M     7.9  12.3  10.7
2   F     6.3  10.6  11.1
3   F     9.5  13.1  13.8
4   M    11.5  13.4  12.9
')
wide
View(wide)
library(tidyverse)
wide %>% pivot_longer(control:cond2, names_to = "treatment", values_to = "Value")
long <- wide %>% pivot_longer(control:cond2, names_to = "treatment", values_to = "Value")
View(long)
wide <- read.table(header=TRUE, text='
subject sex control cond1 cond2
1   M     7.9  12.3  10.7
2   F     6.3  10.6  11.1
3   F     9.5  13.1  13.8
4   M    11.5  13.4  12.9
')
wide <- read.table(header=TRUE, text='
subject sex control cond1 cond2
1   M     7.9  12.3  10.7
2   F     6.3  10.6  11.1
3   F     9.5  13.1  13.8
4   M    11.5  13.4  12.9
')
long <- read.table(header=TRUE, text='
subject  sampleID sex condition measurement
1  ID000001 M   control         7.9
1  ID000002 M     cond1        12.3
1  ID000003 M     cond2        10.7
2  ID000004 F   control         6.3
2  ID000005 F     cond1        10.6
2  ID000006 F     cond2        11.1
3  ID000007 F   control         9.5
3  ID000008 F     cond1        13.1
3  ID000009 F     cond2        13.8
')
long
wide <- pivot_wider(long, names_from = condition, values_from = measurement)
View(wide)
wide <- pivot_wider(id_cols = c(subject, sex), long, names_from = condition, values_from = measurement)
wide <- pivot_wider(id_cols = subject, long, names_from = condition, values_from = measurement)
View(wide)
wide <- pivot_wider(id_cols = c(subject, sex), long, names_from = condition, values_from = measurement)
wide <- pivot_wider(id_cols = c(subject, sex), long, names_from = condition, values_from = c(measurement, sampleID))
wide <- pivot_wider(id_cols = c(subject, sex), long, names_from = condition, values_from = measurement)
wide <- pivot_wider(id_cols = c(subject, sex), long, names_from = condition, values_from = c(measurement, sampleID))
long <- pivot_longer(wide, cols = c(starts_with("measure"), starts_with("sample")), names_sep = "_", names_prefix="M", values_to="V")
long <- pivot_longer(wide, cols = c(starts_with("measure"), starts_with("sample")), names_sep = "_", names_to("measurement", "sampleID"), values_to=c("value", "sample"))
long <- pivot_longer(wide, cols = c(starts_with("measure"), starts_with("sample")), names_sep = "_", names_to=c("measurement", "sampleID"), values_to=c("value", "sample"))
long <- pivot_longer(wide, cols = c(starts_with("measure"), starts_with("sample")), names_sep = "_", names_to=c("measurement", "sampleID"), values_to="value")
wiid <- read_xlsx("Datasets/WIID_19Dec2018.xlsx")
library(readxl)
wiid <- read_xlsx("Datasets/WIID_19Dec2018.xlsx")
wiid
head(wiid)
wiid %>% filter(country == "Germany")
?starts_with
readin<-read_excel("WIID_19Dec2018.xlsx")
readin
#Select only entries from 2016
readin <- readin %>% filter(year == 2016) %>% filter(!duplicated(country))
readin
#Remove duplicate entries for each country (you can use the duplicated function for that)
readin <- readin[!duplicated(readin$country),]
readin
#Select the columns id, country and the quantile columns
myVectorOfStrings <- c("q[0-9]", "id", "country")
matchExpression <- paste(myVectorOfStrings, collapse = "|")
readin <- readin %>% select(matches(matchExpression))
readin
#Use the pivot_wider function to create a long version of the table
readin_long <- readin %>% pivot_longer(cols = q1:q5,values_to = "val")
readin_long
​
#Remove rows containing NA's using the drop_na function
readin_long <- readin_long %>% drop_na()
readin_long
readin<-read_excel("Datasets/WIID_19Dec2018.xlsx")
readin<-read_excel("WIID_19Dec2018.xlsx")
readin
#Select only entries from 2016
readin <- readin %>% filter(year == 2016) %>% filter(!duplicated(country))
readin
#Remove duplicate entries for each country (you can use the duplicated function for that)
readin <- readin[!duplicated(readin$country),]
readin
#Select the columns id, country and the quantile columns
myVectorOfStrings <- c("q[0-9]", "id", "country")
matchExpression <- paste(myVectorOfStrings, collapse = "|")
readin <- readin %>% select(matches(matchExpression))
readin
#Use the pivot_wider function to create a long version of the table
readin_long <- readin %>% pivot_longer(cols = q1:q5,values_to = "val")
readin_long
​
#Remove rows containing NA's using the drop_na function
readin_long <- readin_long %>% drop_na()
readin_long
a <-2
a
a < -2
iris <- read_csv("Datasets/iris.csv")
iris
lapply(iris, class)
head(iris)
data(iris)
iris
pivot_longer(iris, cols=Sepal.Length:Petal.Width)
iris %>% mutate(FlowerID=row_number()) %>% pivot_longer(cols=Sepal.Length:Petal.Width)
annot <- read.csv("annotation.all.csv")
annot <- read.csv("Datasets/annotation.all.csv")
View(annot)
lapply(annot, class)
lapply(annot, summary)
my_lapply <- function(x, func) {
n <- length(x)
ret <- list()
for(i in 1:n) {
ret[[i]] <- func(x[[i]])
}
names(ret) <- names(x)
return(ret)
}
my_lapply(annot, summary)
(function(a, b){ a + b })(1, 2)
(function(a, b){ a + b })(1, 2)
tmp <- list(a=1, b=2, c=1:10)
tmp
tmp$c
paste(tmp$c, collapse=", ")
tmp <- list(a=1:3, b=2, c=1:10)
tmp
mypaste <- function(x) { paste(x, collapse=", ")}
mypaset(1:10)
mypaste(1:10)
lapply(tmp, mypaste)
lapply(tmp, function(x) { paste(x, collapse=", ")})
lapply(tmp, paste, collapse=", ")
mypaste <- function(.) { paste(., collapse=", ")}
lapply(tmp, mypaste)
lapply(tmp, function(.) { paste(., collapse=", ")})
lapply(tmp, function(.) { paste(., collapse=", ")})
sapply(tmp, function(.) { paste(., collapse=", ")})
lapply(tmp, as.character#)
lapply(tmp, as.character)
sapply(tmp, as.character)
replicate(10, rnorm(10), simplify=FALSE)
replicate(10, rnorm(10), simplify=TRUE)
starwars
mtcars %>% summarise_all(~ c(median=median(.), sd=sd(.)))
data(starwars)
starwars
starwars$vehicles
lapply(starwars$starships, length)
sapply(starwars$starships, length)
lapply(starwars$starships, length)
unlist(lapply(starwars$starships, length))
nveh <- sapply(starwars$starships, length)
starwars %>% filter(nveh > 0)
starwars %>% filter(nveh > 0) %>% pull(starships)
vehicle_registry <- starwars %>% filter(nveh > 0) %>% pull(starships)
names(vehicle_registry) <- starwars %>% filter(nveh > 0) %>% pull(name)
vehicle_registry[["Darth Vader"]]
nveh <- map_lgl(starwars$starships, ~ length(.) > 0)
nveh
starwars[ nveh, ]
nveh <- map_chr(starwars$starships, ~ length(.) > 0)
nveh
nveh <- map_int(starwars$starships, ~ length(.) > 0)
nveh
nveh <- map_int(starwars$starships, function(.) { length(.) > 0 })
nveh <- map_int(starwars$starships, ~ { length(.) > 0 })
mtcars %>% mutate_all(mean)
rv <- map(1:10, ~ rnorm(10))
names(rv) <- LETTERS[1:10]
rv
map_dfr(rv, ~ .)
as.data.frame(rv)
as.data.frame(rv)
rv[[1]] <- rv[[1]][1:5]
map_int(rv, length)
as.data.frame(rv)
rv[[1]] <- rv[[1]][1:3]
as.data.frame(rv)
sw_names <- starwars$name
sw_vehcls <- starwars$vehicles
map2_chr(sw_names, sw_vehcls,
~ paste0(.x, "_", length(.y)))
sw_names <- starwars$name
sw_vehcls <- starwars$vehicles
map2_chr(sw_names, sw_vehcls, function(.x, .y) paste0(.x, "_", length(.y)))
starwars %>%
select(name, hair_color, eye_color) %>%
mutate_all(~ gsub("none", NA, .)) %>%
drop_na() %>%
pmap_chr(~ sprintf("%s has %s hair and %s eyes", ...))
vec <- list(last_name="Gates", first_name="Bill")
map_chr(vec, ~ paste0(.y, ": ", .x)#
imap_chr(vec, function(.x, .y) paste0(.y, ": ", .x))
vec
Income <- read_xlsx("Datasets/WIID_19Dec2018.xlsx")
income_2 <- Income %>% filter(year==2016) %>% filter(!duplicated(country)) %>% select("id", "country", paste("q", 1:5, sep = ""))
income_3 <- pivot_longer(income_2, q1:q5, names_to = "quartile", values_to = "gemini")
income_2
income_3
2:5
2:99
ns <- 2:99
ns
ns <- 2:100
ns
randoms <- lapply(ns, rnorm)
grep("a", c("b", "ab", "bb"))
grepl("a", c("b", "ab", "bb"))
grepl("a*", c("b", "ab", "bb"))
grepl("a?", c("b", "ab", "bb"))
grepl("a+", c("b", "ab", "bb"))
grepl("[ab]", c("b", "ab", "bb", "cc"))
grepl("^[ab]", c("b", "ab", "bb", "cc"))
grepl("[^ab]", c("b", "ab", "bb", "cc"))
grepl("[^ab][a-z]", c("c", cb", "ab", "bb", "cc", "c.""))
grepl("[^ab][a-z]", c("c", "cb", "ab", "bb", "cc", "c.""))
grepl("[^ab][a-z]", c("c", "cb", "ab", "bb", "cc", "c."))
grepl("[^ab][a-z]", c("c", "acb", "ab", "bb", " cc", "cdx"))
grepl("^[^ab][a-z]", c("c", "acb", "ab", "bb", " cc", "cdx"))
grepl("^[^ab][a-z]", c("ca", "acb", "ab", "bb", " cc", "cdx"))
grepl("^[^ab][A-Z]", c("ca", "acb", "ab", "bb", " cc", "cdx"))
grepl("^[^ab][a-zA-Z]", c("ca", "acb", "ab", "bb", " cc", "cdx"))
grepl("^[^ab][a-zA-Z0-9]", c("ca", "acb", "ab", "bb", " cc", "cdx"))
grepl("^[^ab][a-zA-Z0-9.ß?ä#]", c("c#", "acb", "ab", "bb", " cc", "cdx"))
grepl("^[^ab][az-]", c("c-", "acb", "ab", "bb", " cc", "cdx"))
grepl("^[^ab][abz-]", c("c-", "acb", "ab", "bb", " cc", "cdx"))
grepl("^[^ab][abz]", c("c-", "acb", "ab", "bb", " cc", "cdx"))
grepl("[^ab][abzc]", c("c-", "acb", "ab", "bb", " cc", "cdx"))
grepl("[^ab][abzc-]", c("c-", "acb", "ab", "bb", " cc", "cdx"))
gsub("a+", "%", "q a aa aaa")
gsub("a*", "%", "q a aa aaa")
gsub("a?", "%", "q a aa aaa")
gsub("[abcdz]", "%", "abcdefghijklmnopqrstuvwz")
gsub("[a-cu-z]", "%", "abcdefghijklmnopqrstuvwz")
gsub("abcdefg", "%", "abcdefghijklmnopqrstuvwz")
gsub(".bba", "%", "abba bebba ubba mabba")
gsub(".*bba", "%", "abba bebba ubba mabba")
gsub("[^ ].bba", "%", "abba bebba ubba mabba")
gsub("[eubb*a]", "%", "abba bebbba uba mabba")
gsub("[eu]bb*a", "%", "abba bebbba uba mabba")
savehistory()
gsub(".*(.bbb.).*", "\\1", "abba bebbba uba mabba")
gsub("[[:alnum:]]", "@", "2 + 3 * a = 10")
gsub("\\(", "yes", "(???)")
identifiers <- c("S001 ID9835", "S002-ID12363", "S003_ID84755")
data.frame(ids=identifiers) %>% separate(ids, sep="[- _]", into=c("sample", "ID"))
strsplit(identifiers, "[- _]")
identifiers <- c("S001 ID9835", "S002-ID12363", "S003_ID84755", "S005_ID12312_ID238848")
data.frame(ids=identifiers) %>% separate(ids, sep="[- _]", into=c("sample", "ID"))
strsplit(identifiers, "[- _]")
map(strsplit(identifiers, "[- _]"), function(x) x[1])
map_chr(strsplit(identifiers, "[- _]"), function(x) x[1])
map_chr(strsplit(identifiers, "[- _]"), `[`, 1]
map_chr(strsplit(identifiers, "[- _]"), `[`, 1)
map_chr(strsplit(identifiers, "[- _]"), `[`, 1)
`[`(1:3, 1)
regex <- "(S[0-9]+)[ -_](ID[0-9]+)"
data.frame(
sample=gsub(regex, "\\1", identifiers),
ID=gsub(regex, "\\2", identifiers))
identifiers
regex <- "(S[0-9]+)[ -_](ID[0-9A-Z]+)"
data.frame(
sample=gsub(regex, "\\1", identifiers),
ID=gsub(regex, "\\2", identifiers))
regex <- "(S[0-9]+)[ -_](ID[0-9A-Z_]+)"
data.frame(
sample=gsub(regex, "\\1", identifiers),
ID=gsub(regex, "\\2", identifiers))
grepl("^Arz*b?$", "Arzb")
grepl("^Arz*b?$", "Arzbb")
grepl("[A-Z][a-z]*ickle", c("Trickle", "Pickle", "Fickle", "Ickle", "trickle"))
grepl("Und[dD]ead", c("UNDEAD", "Unddead", "UndDead", "Undead"))
grepl("Und[dD]?ead", c("UNDEAD", "Unddead", "UndDead", "Undead"))
grepl("^Arz*b?$", "Ar")
grepl("^Arz*b?$", "Arzb")
grepl("^Arz*b?$", "Arzb ")
grepl("^Arz*b?$", "Arzzzzzzzzzzzzzzzzzb ")
grepl("^Arz*b?$", "Arzzzzzzzzzzzzzzzzzb")
grepl("^Arz*b?$", "Arb")
grepl("^Arz*b?$", "Ar ")
grepl("BF[^A:H][0-9]*", "BFx", "BF9000", "kjdflkjdfkljhydkfhvykydjfhBFahkajsdfkjashdfjhas")
grepl("BF[^A:H][0-9]*", c("BFx", "BF9000", "kjdflkjdfkljhydkfhvykydjfhBFahkajsdfkjashdfjhas"))
grepl("BF[^A:H][0-9]*", c("BFG", "BFG9000", "kjdflkjdfkljhydkfhvykydjfhBFAahkajsdfkjashdfjhas"))
grepl("BF[^A-H][0-9]*", c("BFG", "BFG9000", "kjdflkjdfkljhydkfhvykydjfhBFAahkajsdfkjashdfjhas"))
grepl("Janie's got a (pony|gun)", c("Janie's got a pony", "Janie's got a gun"))
grepl("Janie's got a (pony|gun|wedding)", c("Janie's got a wedding", "Janie's got a gun"))
grepl("ickle", c("Fickle", "Tickle", "Prickle"))
grepl("ickle", c("Fickle", "Tickle", "Prickle", "tickle", "PRickle", "ickle"))
grepl("[A-Z]ickle", c("Fickle", "Tickle", "Prickle", "tickle", "PRickle", "ickle"))
grepl("[A-Z][a-z]?ickle", c("Fickle", "Tickle", "Prickle", "tickle", "PRickle", "ickle"))
grepl("^[A-Z][a-z]?ickle$", c("Fickle", "Tickle", "Prickle", "tickle", "PRickle", "ickle"))
grepl("(+49|0049|0|) ?[0-9]+[0-9 ]*[0-9]+", "+49 30 00893498238473")
grepl("(+49|0049|0|) ?[0-9]+[0-9 ]*[0-9]+", "+49 30 00893498238473asdfasd")
grepl("(+49|0049|0|) ?[0-9]+[0-9 ]*[0-9]+$", "+49 30 00893498238473asdfasd")
grepl("(+49|0049|0|) ?[0-9]+[0-9 ]*[0-9]+$", "11")
grepl("(+49|0049|0|) ?[0-9]+[0-9 ]*[0-9][0-9]+$", "11")
grepl("(+49|0049|0|) ?[0-9]+[0-9 ]*[0-9][0-9]+$", "110")
savehistory(file="script_day_3.R")
