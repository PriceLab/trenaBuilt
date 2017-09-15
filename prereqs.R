source("http://bioconductor.org/biocLite.R")

code.pkgs <- c("GenomicRanges",
               "Biostrings",
               "BiocParallel",
               "DBI",
               "RPostgreSQL",
               "RMySQL",
               "RSQLite",
               "lassopv",
               "randomForest",
               "flare",
               "vbsr",
               "stringr")

data.pkgs <- c("BSgenome",
               "BSgenome.Hsapiens.UCSC.hg38",
               "BSgenome.Hsapiens.UCSC.hg19",
               "BSgenome.Mmusculus.UCSC.mm10",
               "org.Hs.eg.db",
               "SNPlocs.Hsapiens.dbSNP144.GRCh38")

biocLite(c(code.pkgs, data.pkgs))


