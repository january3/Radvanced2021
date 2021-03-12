library(gganimate)
#> Loading required package: ggplot2
# We'll start with a static plot
p <- ggplot(iris, aes(x = Petal.Width, y = Petal.Length)) +
geom_point()
plot(p)
anim <- p +
transition_states(Species,
transition_length = 2,
state_length = 1)
anim
remove.packages("gifski")
anim <- p +
transition_states(Species,
transition_length = 2,
state_length = 1)
anim
remove.packages("av")
install.packages("gifski")
install.packages("gifski")
anim <- p +
transition_states(Species,
transition_length = 2,
state_length = 1)
anim
anim
?regexp
iris <- read_csv("Datasets/iris.csv")
library(tidyverse)
iris <- read_csv("Datasets/iris.csv")
iris
iris
class(iris)
iris <- read_csv("Datasets/iris.csv")
iris
map_dbl(iris, sd)
iris[42,]
map_dfc(iris, range)
iris <- read.csv("Datasets/iris.csv")
iris
class(iris$Sepal.Width)
iris[42,]
iris <- read_csv("Datasets/iris.csv")
library(colorDF)
colorDF::colorDF_themes_show()
options(colorDF_theme = "dark")
mtcars
print.data.frame <- colorDF::print_colorDF
mtcars
?replace
library(readxl)
mdb <- read_excel("Datasets/meta_data_botched.xlsx")
mdb
which(is.na(as.numeric(mdb$AGE)))
mdb[ which(is.na(as.numeric(mdb$AGE))), ]
mdb %>% select(Timepoint, ARM, SEX, PLACEBO, ip) %>% lapply(unique)
mdb$PLACEBO
summary(mdb$PLACEBO)
summary(factor(mdb$PLACEBO))
mdb %>% select(Timepoint, ARM, SEX, PLACEBO, ip) %>% lapply(function(x) { summary(factor(x))})
mdb %>% mutate(ARM=gsub("^(.).*", "\\1"))
mdb %>% mutate(ARM=gsub("^(.).*", "\\1", ARM))
mdb %>% mutate(ARM=gsub("^(.).*", "\\1", ARM)) %>% pull(ARM)
mdb %>% mutate(ARM=gsub("c", "P", gsub("^(.).*", "\\1", ARM))) %>% pull(ARM)
mdb %>% mutate(ARM=gsub("c", "P", gsub("^(.).*", "\\1", ARM))) %>% pull(ARM)
mdb %>% mutate(ARM=gsub("c", "P", gsub("^(.).*", "\\1", ARM))) %>% pull(ARM) %>% replace("A", "AGGRIPAL")
mdb %>% mutate(ARM=gsub("c", "P", gsub("^(.).*", "\\1", ARM))) %>% pull(ARM) %>% recode("A", "AGGRIPAL")
mdb %>% mutate(ARM=substring(ARM, 1, 1)) %>% pull(ARM)
mdb %>% mutate(ARM=substring(ARM, 1, 1)) %>% pull(ARM)
?replace
replace("F", "F", "FLUAD")
mdb %>% select(Timepoint, ARM, SEX, PLACEBO, ip) %>% lapply(function(x) { summary(factor(x))})
mdb %>% mutate(SEX=gsub("^[fw].*", "F", SEX, ignore.case = T))
mdb %>% mutate(SEX=gsub("^[fw].*", "F", SEX, ignore.case = T)) %>% pull(SEX)
mdb %>% mutate(SEX=gsub("^[fw].*", "F", SEX, ignore.case = T)) %>% mutate(SEX=gsub("^m*", "M", SEX, ignore.case = T)) %>% pull(SEX)
mdb %>% mutate(SEX=gsub("^[fw].*", "F", SEX, ignore.case = T)) %>% mutate(SEX=gsub("^m.*", "M", SEX, ignore.case = T)) %>% pull(SEX)
mpg
?mpg
plot(cty, hwy, data=mpg)
plot(mpg$cty, mpg$hwy)
mpg %>% ggplot(aes(x=cty, y=hwy))
mpg %>% ggplot(aes(x=cty, y=hwy)) + geom_point()
mpg %>% ggplot(aes(x=cty, y=hwy)) + geom_point() + theme(theme_bw())
mpg %>% ggplot(aes(x=cty, y=hwy)) + geom_point() + theme_bw()
mpg %>% ggplot(aes(x=cty, y=hwy)) + geom_point() + theme_tufte()
library(ggthemes)
mpg %>% ggplot(aes(x=cty, y=hwy)) + geom_point() + theme_tufte()
mpg %>% ggplot(aes(x=cty, y=hwy)) + geom_point() + theme_classic()
mpg %>% ggplot(aes(x=cty, y=hwy)) + geom_point() + cowplot::theme_cowplot()
wid <- read_excel("../Datasets/WIID_19Dec2018.xlsx")
wid <- wid %>% drop_na(gini_reported, q1:q5, d1:d10)
wid2015 <- wid %>% filter(year==2015 &
region_un == "Europe" &
population > 5e6)
wid2015
wid2015sel <- wid2015  %>%
filter(quality=="High") %>%
filter(!duplicated(country)) %>%
select(country, gini_reported, q1:q5, d1:d10)
wid2015sel
data <- wid2015sel %>%
gather(q1:q5, key="quantile", value="proportion")
data
wid2015sel <- wid2015  %>%
filter(quality=="High") %>%
filter(!duplicated(country)) %>%
select(country, gini_reported, q1:q5)
wid2015sel
data <- wid2015sel %>%
gather(q1:q5, key="quantile", value="proportion")
data
data <- wid2015sel %>%
pivot_longer(q1:q5, names_to="quantile", values_to = ="proportion")
data <- wid2015sel %>%
pivot_longer(q1:q5, names_to="quantile", values_to ="proportion")
data
data <- wid2015sel %>%
gather(q1:q5, key="quantile", value="proportion") %>%
mutate(quantile=factor(quantile, levels=paste0("q", c(2, 1, 5, 4, 3))))
data
p <- ggplot(data, aes(x=country, y=proportion)) + geom_point()
p
p <- ggplot(data, aes(x=country, y=proportion)) + geom_bar(stat="identity")
p
p + coord_flip()
p <- ggplot(data, aes(x=country, y=proportion, fill=quantile)) + geom_bar(stat="identity")
p + coord_flip()
data <- wid2015sel %>%
gather(q1:q5, key="quantile", value="proportion") %>%
mutate(quantile=factor(quantile, levels=paste0("q", 1:5)))
p <- ggplot(data, aes(x=country, y=proportion, fill=quantile)) + geom_bar(stat="identity")
p + coord_flip()
data <- wid2015sel %>%
gather(q1:q5, key="quantile", value="proportion") %>%
mutate(quantile=factor(quantile, levels=paste0("q", 5:1)))
p + coord_flip()
p <- ggplot(data, aes(x=country, y=proportion, fill=quantile)) + geom_bar(stat="identity")
p + coord_flip()
data
data <- data %>% mutate(country=reorder(gini_reported))
data <- data %>% mutate(country=reorder(country, gini_reported))
data
p <- ggplot(data, aes(x=country, y=proportion, fill=quantile)) + geom_bar(stat="identity")
p + coord_flip()
p + theme_tufte() + scale_fill_brewer(palette="Blues") +
ylab("Proportion of wealth") + xlab("Country") +
guides(fill=guide_legend(reverse=TRUE))
p + theme_tufte() + scale_fill_brewer(palette="Blues") +
ylab("Proportion of wealth") + xlab("Country") +
guides(fill=guide_legend(reverse=TRUE)) + coord_flip
p + theme_tufte() + scale_fill_brewer(palette="Blues") +
ylab("Proportion of wealth") + xlab("Country") +
guides(fill=guide_legend(reverse=TRUE)) + coord_flip()
p + theme_tufte() + scale_fill_brewer(palette="Blues") +
ylab("Proportion of wealth") + xlab("Country") +
guides(fill=guide_legend(reverse=TRUE)) + coord_flip() + geom_text(aes(label=proportion))
p <- ggplot(data, aes(x=country, y=proportion, fill=quantile)) + geom_bar(stat="identity")
p
p + geom_text(aes(label=y))
p + geom_text(aes(label=proportion))
data
wid2015sel
foo <- wid2015sel
foo <- wid2015sel
foo <- wid2015sel %>% select(q1:q5)
foo2 <- apply(foo, 1, cumsum)
foo2
cumsum(1, 2, 1, 5)
cumsum(c(1, 2, 1, 5))
foo2 <- apply(foo, 1, cumsum)
foo2
foo2 <- t(apply(foo, 1, cumsum))
foo2
head(wid2015sel)
colnames(foo2) <- paste0("c", colnames(foo2))
foo2
wid2015sel <- cbind(wid2015sel, foo2)
wid2015sel
rm(print.data.frame())
rm(print.data.frame
)
wid2015sel
?pivot_longer
data <- pivot_longer(wid2015sel, q1:cq5, names_to="quantile", values_to="proportion")
date
data
data %>% filter(grepl("^q", quantile))
cbind(data %>% filter(grepl("^q", quantile)), data %>% filter(grepl("^cq", quantile)))
cbind(data %>% filter(grepl("^q", quantile)), data %>% filter(grepl("^cq", quantile))) %>% select(country, gini_reported, quantile, proportion)
cbind(data %>% filter(grepl("^q", quantile)), data %>% filter(grepl("^cq", quantile)))
data <- cbind(data %>% filter(grepl("^q", quantile)), data %>% filter(grepl("^cq", quantile)))
data
data <- as.data.frame(data)
data
sel <- duplicated(colnames(data))
sel
colnames(data)[sel] <- paste0(colnames(data)[sel], '.1')
colnames(data)
country, y=proportion, fill=quantile)) + geom_bar(stat="identity")
p + theme_tufte() + scale_fill_brewer(palette="Blues") +
ylab("Proportion of wealth") + xlab("Country") +
guides(fill=guide_legend(reverse=TRUE)) + coord_flip() + geom_text(aes(label=proportion))#
p + theme_tufte() + scale_fill_brewer(palette="Blues") +
ylab("Proportion of wealth") + xlab("Country") +
guides(fill=guide_legend(reverse=TRUE)) + coord_flip() + geom_text(aes(label=proportion.1))#
p <- ggplot(data, aes(x=country, y=proportion, fill=quantile)) + geom_bar(stat="identity")
p + theme_tufte() + scale_fill_brewer(palette="Blues") +
ylab("Proportion of wealth") + xlab("Country") +
guides(fill=guide_legend(reverse=TRUE)) + coord_flip() + geom_text(aes(label=proportion.1))#
data
p <- ggplot(data, aes(x=country, y=proportion, fill=quantile)) + geom_bar(stat="identity")
p + theme_tufte() + scale_fill_brewer(palette="Blues") +
ylab("Proportion of wealth") + xlab("Country") +
guides(fill=guide_legend(reverse=TRUE)) + coord_flip() + geom_text(aes(label=proportion.1))#
p + theme_tufte() + scale_fill_brewer(palette="Blues") +
ylab("Proportion of wealth") + xlab("Country") +
guides(fill=guide_legend(reverse=TRUE)) + coord_flip() + geom_text(aes(label=proportion, y=proportion.1))#
p + theme_tufte() + scale_fill_brewer(palette="Blues") +
ylab("Proportion of wealth") + xlab("Country") +
guides(fill=guide_legend(reverse=TRUE)) + coord_flip() + geom_text(aes(label=100-proportion, y=proportion.1))#
p + theme_tufte() + scale_fill_brewer(palette="Blues") +
ylab("Proportion of wealth") + xlab("Country") +
guides(fill=guide_legend(reverse=TRUE)) + coord_flip() + geom_text(aes(label=proportion, y=100-proportion.1))#
p + theme_tufte() + scale_fill_brewer(palette="Blues") +
ylab("Proportion of wealth") + xlab("Country") +
guides(fill=guide_legend(reverse=TRUE)) + coord_flip() + geom_text(aes(label=format(proportion, digits=2), y=100-proportion.1))#
p + theme_tufte() + scale_fill_brewer(palette="Blues") +
ylab("Proportion of wealth") + xlab("Country") +
guides(fill=guide_legend(reverse=TRUE)) + coord_flip() + geom_text(aes(label=format(proportion, digits=0), y=100-proportion.1))#
?pivot_longer
wid2015sel
wid2015sel <- wid2015  %>%
filter(quality=="High") %>%
filter(!duplicated(country)) %>%
select(country, gini_reported, q1:q5)
foo2
wid2015sel <- cbind(wid2015sel, foo2)
wid2015sel
wid2015sel %>% pivot_longer(names_to=c(".value", "quantile"), names_pattern = "(c?q)([0-9]")
wid2015sel %>% pivot_longer(q1:cq5, names_to=c(".value", "quantile"), names_pattern = "(c?q)([0-9]")
wid2015sel %>% pivot_longer(q1:cq5, names_to=c(".value", "quantile"), names_pattern = "(c?q)([0-9])")
?pivot_longer_spec
?pivot_longer
?mutate_all
?across
foo <- read_csv("Datasets/transcriptomics_results.csv")
foo
foo
foo <- read_csv("Datasets/transcriptomics_results.csv")
foo
foo %>% arrange(qval.F.D1)
wiid <- read_xlsx("Datasets/WIID_19Dec2018.xlsx")
wiid
wiid$quality
wiid %>% filter(quality == "High") %>% group_by(country, year)
wiid %>% filter(quality == "High") %>% group_by(country, year) %>% slice(1)
wiid %>% filter(quality == "High") %>% group_by(country, year) %>% slice(1) %>% ggplot(aes(x=year, y=gini_reported)) + geom_line()
wiid %>% filter(quality == "High") %>% group_by(country, year) %>% slice(1) %>% ggplot(aes(x=year, y=gini_reported, color=country)) + geom_line()
wiid %>% filter(quality == "High") %>% group_by(country, year) %>% slice(1) %>% ggplot(aes(x=year, y=gini_reported, color=country)) + geom_line(show.legend = FALSE)
wiid %>% filter(quality == "High") %>% group_by(country, year) %>% slice(1) %>% ggplot(aes(x=year, y=gini_reported, group=country)) + geom_line(show.legend = FALSE)
wiid %>% filter(quality == "High") %>% group_by(country, year) %>% slice(1) %>% ggplot(aes(x=year, y=gini_reported, group=country, color=region_un)) + geom_line(show.legend = FALSE)
wiid %>% filter(quality == "High") %>% group_by(country, year) %>% slice(1) %>% ggplot(aes(x=year, y=gini_reported, group=country, color=region_un)) + geom_line()
plot(1:10, col="DarkBlue")
plot(1:10, col="DarkBlue", pch=19
)
plot(1:10, col="DarkBlue", pch=19, cex=2)
plot(1:10, col="NavyBlue", pch=19, cex=2)
plot(1:10, col="#FF0000", pch=19, cex=2)
plot(1:10, col="#990000", pch=19, cex=2)
plot(1:10, col="#993300", pch=19, cex=2)
plot(1:10, col="#9933FF", pch=19, cex=2)
x <- rnorm(10000)
y <- x + rnorm(10000)
p1 <- ggplot(NULL, aes(x=x, y=y)) + geom_point() +
theme_tufte() + theme(plot.margin=unit(c(2,1,1,1), "cm"))
p1
p2 <- ggplot(NULL, aes(x=x, y=y)) + geom_point(color="#6666661F") +
theme_tufte() + theme(plot.margin=unit(c(2,1,1,1),"cm"))
p2
p2 <- ggplot(NULL, aes(x=x, y=y)) + geom_point(alpha=.2) +
theme_tufte() + theme(plot.margin=unit(c(2,1,1,1),"cm"))
p2
p2 <- ggplot(NULL, aes(x=x, y=y)) + geom_point(alpha=.02) +
theme_tufte() + theme(plot.margin=unit(c(2,1,1,1),"cm"))
p2
data("iris")
pal <- brewer.pal(3, "Dark2")
library(RColorBrewer)
pal <- brewer.pal(3, "Dark2")
pal
plot(1:3, pch=19, col=pal, cex=5)
pal <- brewer.pal(3, "Dark2")
iris$Species <- factor(iris$Species)
cols <- pal[ iris$Species ]
cols
pal <- brewer.pal(3, "Dark2")
iris$Species <- factor(iris$Species)
cols <- pal[ iris$Species ]
plot(iris$Sepal.Length, iris$Sepal.Width, col=cols, pch=19,
xlab="Sepal length", ylab="Sepal width", bty="n", cex=1.5)
legend("topright", levels(iris$Species), col=pal, pch=19, bty="n")
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
geom_point(size=4) + scale_color_brewer(palette="Set2") + theme_tufte() +
theme(axis.title.y=element_text(margin=margin(0,10,0,0)),
axis.title.x=element_text(margin=margin(10, 0, 0, 0)))
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
geom_point(size=4) + scale_color_viridis_d() + theme_tufte() +
theme(axis.title.y=element_text(margin=margin(0,10,0,0)),
axis.title.x=element_text(margin=margin(10, 0, 0, 0)))
pal_func <- colorRampPalette(c("cyan", "black", "purple"))
pal_func
pal_func(15)
plot(1:15, pch=19, cex=9, col=pal_func(15))
show_col
??show_col
library(scales)
show_col(pal_func(15))
display.brewer.all()
tr <- read_csv("Datasets/transcriptomics_results.csv")
tr
ggplot(tr, aes(logFC.F.D0, logFC.F.D1)) + geom_point() + theme_bw()
ggplot(tr, aes(logFC.F.D0, logFC.F.D1, color=logFC.F.D1)) + geom_point() + theme_bw()
ggplot(tr, aes(logFC.F.D0, logFC.F.D1, color=logFC.F.D1)) + geom_point() + theme_bw() + scale_color_gradient2(low=muted("blue"), mid="grey", high=muted("red"))
ggplot(tr, aes(logFC.F.D0, logFC.F.D1, color=logFC.F.D1)) + geom_point() + theme_bw() + scale_color_gradient2(low=("blue"), mid="grey", high=("red"))
ggplot(tr, aes(logFC.F.D0, logFC.F.D1, color=logFC.F.D1)) + geom_point() + theme_bw() + scale_color_gradient2(low=("blue"), mid="#CCCCCCC", high=("red"))
ggplot(tr, aes(logFC.F.D0, logFC.F.D1, color=logFC.F.D1)) + geom_point() + theme_bw() + scale_color_gradient2(low=("blue"), mid="#CCCCCC", high=("red"))
tr
tr <- tr %>% mutate(disco=logFC.F.D0 * logFC.F.D1 * (-log10(qval.F.D0) - log10(qval.F.D1)))
summary(tr$disco)
ggplot(tr, aes(logFC.F.D0, logFC.F.D1, color=disco)) + geom_point() + theme_bw() + scale_color_gradient2(low=("blue"), mid="#CCCCCC", high=("red"))
tr <- tr %>% mutate(disco=logFC.F.D0 * logFC.F.D1 * (-log10(qval.F.D0) - log10(qval.F.D1)), disco_trimmed=ifelse(abs(disco) > 20, sign(disco) * 20, disco_trimmed))
tr <- tr %>% mutate(disco=logFC.F.D0 * logFC.F.D1 * (-log10(qval.F.D0) - log10(qval.F.D1)), disco_trimmed=ifelse(abs(disco) > 20, sign(disco) * 20, disco))
ggplot(tr, aes(logFC.F.D0, logFC.F.D1, color=disco_trimmed)) + geom_point() + theme_bw() + scale_color_gradient2(low=("blue"), mid="#CCCCCC", high=("red"))
ggplot(tr, aes(logFC.F.D0, logFC.F.D1, color=disco_trimmed)) + geom_point(alpha=.2) + theme_bw() + scale_color_gradient2(low=("blue"), mid="#CCCCCC", high=("red"))
ggplot(tr, aes(logFC.F.D0, logFC.F.D1, color=disco_trimmed)) + geom_point(alpha=.7) + theme_bw() + scale_color_gradient2(low=("blue"), mid="#CCCCCC", high=("red"))
tr <- tr %>% mutate(disco=logFC.F.D0 * logFC.F.D1 * (-log10(qval.F.D0) - log10(qval.F.D1)), disco_trimmed=ifelse(abs(disco) > 10, sign(disco) * 10, disco_trimmed)) %>% arrange(abs(disco))
tr
tr %>% select(1:5, disco)
ggplot(tr, aes(logFC.F.D0, logFC.F.D1, color=disco_trimmed)) + geom_point(alpha=.7) + theme_bw() + scale_color_gradient2(low=("blue"), mid="#CCCCCC", high=("red"))
tr <- tr %>% mutate(disco=logFC.F.D0 * logFC.F.D1 * (-log10(qval.F.D0) - log10(qval.F.D1)), disco_trimmed=ifelse(abs(disco) > 5, sign(disco) * 5, disco_trimmed)) %>% arrange(abs(disco))
ggplot(tr, aes(logFC.F.D0, logFC.F.D1, color=disco_trimmed)) + geom_point(alpha=.7) + theme_bw() + scale_color_gradient2(low=("blue"), mid="#CCCCCC", high=("red"))
c(1, 2, 15, 2, 5, -1)
x <- c(1, 2, 15, 2, 5, -1)
x <- c(1, 2, 15, 2, 5, -15, -2)
x[ abs(x) > 5 ] <- 5 * sign(x[ abs(x) > 5])
x
x <- c(1, 2, 15, 2, 5, -15, -2)
ifelse(abs(x) > 5, )
abs(x) > 5
ifelse(abs(x) > 5, 5 * sign(x))
sign(x)
sign(x) * 5
ifelse(abs(x) > 5, 5 * sign(x), x)
savehistory()
