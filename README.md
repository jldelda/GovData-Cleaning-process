# GovData-Cleaning-process

This reporistory contains the files for the cleaning process GovData360 ingestion process. In the Spring 2018 ingestion process, 19 of the 38 data sources are updated. This process consist of:

1. Downloading all the files from the sources to update. (Done manually)
2. Transform the excel to the same format*. (Done with the Stata files)
3. Clean each file and make sure all of them have the right variables. (Done)
3. Join all the files in the same big 'master file'. (Done)
  3.1. These files are **MasterIND.csv** with the list of indicators and its metadata; and **Master.csv** with the values, years and countries.
4. *Get the metadata from previous ingestion file* (Done)
5. Append the no-updated data sources after the updated ones for both files (Done)

Additional tasks done in this repository:
6. Add definitions to each indicator. (To do)
7. Re-Rank and drop old indicators. (To do)
  7.1 See folder Re-Rank. It creates metadata of each indicator and an excel file for this process.

*Note: The step 4 is done and explained in the xxx document*


# Disclaimer
This repository does not contain the final dataset created due to the high weight of it. It does contain de IND file but not the values file..