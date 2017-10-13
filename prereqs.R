printf <- function(...) print(noquote(sprintf(...)))

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
               "stringr",
               "httpuv",
               "colorspace",
               "annotate",
               "splitstackshape")

biocLite(code.pkgs)

data.pkgs <- c("BSgenome",
               "BSgenome.Hsapiens.UCSC.hg38",
               "BSgenome.Hsapiens.UCSC.hg19",
               "BSgenome.Mmusculus.UCSC.mm10",
               "org.Hs.eg.db",
               "org.Mm.eg.db",
               "SNPlocs.Hsapiens.dbSNP150.GRCh38")

for(data.pkg in data.pkgs){
   suppressWarnings(
      needed <- !require(data.pkg, character.only=TRUE, quiet=TRUE)
      )
   printf("%s needed? %s", data.pkg, needed)
   if(needed)
      biocLite(data.pkg,quiet=FALSE)
   } # for


