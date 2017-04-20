source("https://bioconductor.org/biocLite.R")
biocLite("SNPediaR")
library(SNPediaR)

pg <- getPages (titles = "Rs53576")
pg
View(pg)
extractSnpTags (pg$Rs53576)

pgs <- getPages (titles = c ("Rs53576(A;A)", "Rs53576(A;G)", "Rs53576(G;G)"))
pgs
sapply (pgs, extractGenotypeTags)
