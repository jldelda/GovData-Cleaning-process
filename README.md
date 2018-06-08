# GovData Cleaning process (Spring 2018 Ingestion procress)

This reporistory contains the files for the cleaning process of GovData360 ingestion process (2018 Spring Ingestion). In the Spring 2018 ingestion process, 16 of the 38 data sources are updated. The main improvements made in this cycle were:

* Creation of new indicators_Id's
* Process of matching indicators through text similarity (See note 1*)
* Cleaned Display names
* Dropped non-governance related indicators

*Note 1*: There was an isssue of matching indicators and its corresponding metadata (categories) with previous year's indicators. In order to solve it, a text similarity process was used. See each file in /Data cleaning folder to understand it.

---
## The process

'''
Note that the files of step 2 are not included in this repo. 
They are Stata files done by Luis Omar.
'''

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

## Folder structure


## Disclaimer
This repository does not contain the final dataset created due to the high weight of it. It does contain de IND file but not the values file..

## Requirements

* RStudio
* R version 3.4.1
* R libraries: StringR, dplyr and the common ones.

# License
[License](https://github.com/jldelda/GovData-Cleaning-process/blob/master/LICENSE)
# How to contribute

Due to the nature of the process, this repository is not made to contribute in it. The 2018 Spring ingestion process is only made once. If you want to reuse this repository for future ingestions feel free to fork/clone this repo and create a new one. 

Once you do that, send me a note or modify this Readme to add the link to the next ingestion repository, then all are linked.

# Author

* Jose Luis Delgado Davara [@JLdelda](www.twitter.com/jldelda)
*Luis Omar HErrar Prada was the initial developer of this process. However, His files are not included in this repo.*







