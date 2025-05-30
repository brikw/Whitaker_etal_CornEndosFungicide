require(dplyr)
require(Biostrings)



setwd("C:/Users/Briana.Whitaker/OneDrive - USDA/2-ResearchProjects/2022-CornDebrisFungicides/Data/Sequencing/ab1")

# read in the data
corn.pos <- read.csv("./ITSx/CDF_OTU97.positions.csv", 
         header = TRUE, row.names = 1)
corn.fas <- readDNAStringSet("./CDF_OTU97_cons.fasta")  
identical(rownames(corn.pos) , names(corn.fas))



## extract full ITS
corn.its <- subseq(corn.fas, start = corn.pos$ITS1.s, end = corn.pos$ITS2.e)
## extract full LSU
#   Note - for seq[47] this just gives partial LSU
corn.lsu <- subseq(corn.fas, start = corn.pos$LSU.s, end = corn.pos$LSU.e)


#writeXStringSet(corn.its, "./ITSx/CDF_OTU97_cons_ITS.fasta")
#writeXStringSet(corn.lsu, "./ITSx/CDF_OTU97_cons_LSU.fasta")



sessionInfo()