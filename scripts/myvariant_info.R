source("https://bioconductor.org/biocLite.R")
biocLite("myvariant")
library(myvariant)
library(VariantAnnotation)

file.path <- system.file("extdata", "dbsnp_mini.vcf", package="myvariant")
file.path <- system.file("extdata", "dbsnp_mini.vcf", package="myvariant")


vcf <- readVcf(file.path, genome="hg38")
class(vcf)
vcf$rs14019410


rowRanges(vcf)
hgvs <- formatHgvs(vcf, variant_type="snp")
hgvs

variant <- getVariant("chr1:g.35367G>A")

class(variant)
variant
variant[[1]]$`_id`
variant[[1]]$`_id`
variant[[1]]$dbnsfp$genename
variant[[1]]$cadd$phred

getVariants(c("chr1:g.35367G>A", "chr16:g.28883241A>G"),fields="cadd.consequence")

queryVariant(q="dbnsfp.genename:MLL2", fields=c("cadd.phred", "cadd.consequence"))
queryVariant(q="rs58991260", fields="dbsnp.flags")$hits
rsids <- paste("rs", info(vcf)$RS, sep="")

res <- queryVariants(q=rsids, scopes="dbsnp.rsid", fields="all")
