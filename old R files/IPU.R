
### Script that reads and transform the R file for the GovData360 ingestion process

library(dplyr)
library(reshape2)
setwd("C:/Users/wb533078/OneDrive - WBG/1 DATA UPDATE")
file = "C:/Users/wb533078/OneDrive - WBG/1 DATA UPDATE/Raw_Download_April2018/IPU/IPUtransformed2018.csv"
df = read.csv(file, sep = ",")

# Read old dataset
file_old = "C:/Users/wb533078/OneDrive - WBG/1 DATA UPDATE/Raw_Download_April2018/IPU/IPU_old.csv"
df_old = read.csv(file_old, sep = ";")

# Wide to long
IPU = melt(df, id.vars = c("ISO3", "Chamber", "Structure.of.parliament"), measure.vars = c("Number.of.seats", 
                            "Number.of.women.parliamentarians", "Percentage.of.women"))

# Create columns as required
IPU$dataset = "IPU"
IPU$year = "2018"
IPU$subset = "All"
IPU$group = paste(IPU$Chamber, IPU$Structure.of.parliament)
IPU$question = IPU$group  
colnames(IPU)[4] = "answer"
IPU$keyN = ""
IPU$Indicator_Id = ""
IPU$indicator = ""
colnames(IPU)[1] = "iso3"
  # Drop columns
IPU = IPU[ , !(names(IPU) %in% c("Chamber","Structure.of.parliament"))] # Drop
  
  # Reorder columns
IPU = IPU[colnames(df_old)]

save.location = "C:/Users/wb533078/OneDrive - WBG/1 DATA UPDATE/Data/IPU/IPU.csv"
write.csv(IPU, save.location)

