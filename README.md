# iSTATS
![Alt ou título da imagem](https://github.com/LaCiDIAUFG/iSTATS/blob/master/iSTATS_logo.png)

## Intro
A package developed in R using shiny dashbord, iSTATS (interactive STAtisTical Spectroscopy) have a GUI platform where user can analize NMR data 1D. From the construction of the matrix, going through a pre-treatment of the data to the application of STOCSY methods, which are used in the study of metabolomics, and among other areas whose characterization and relationship between the molecules are the object of study in NMR technology.

## Install iSTATS
There are 2 ways to install iSTATS, fisrt one is on CRAN (The Comprehensive R Archive Network) and another is from here github.

### Install iSTATS from CRAN 
You can install by R with command `install.packages('iSTATS')` or you can use RStudio tool as in the figure below:


![Alt ou título da imagem](https://github.com/LaCiDIAUFG/iSTATS/blob/master/rstudio_install.jpg)


### Install iSTATS from Github
First install devtools package with the command `install.packages("devtools")`.
After install `library(devtools)`, you can install iSTATS with the command `install_github("LaCiDIAUFG/iSTATS")`.

# Run iSTATS
After install iSTATS, you must load and run the package with the commands  `library(iSTATS)` and `iSTATS()`, so it will open in the web browser.

## import 
In Data menu is possible import NMR data in `.csv` , `.txt`,and `.RData`.

### import_csv
When importing NMR data in `.csv` format, they must be in accordance with the figure below:
![This is the formate of each sample file to import in .csv. Chemical Shift and intensity separate with comma. ](https://github.com/LaCiDIAUFG/iSTATS/blob/master/import_csv.jpg)




### import_Rdata
When importing NMR data in `.RData` format, they must be in accordance with the figure below:
![This is the formate of all samples file to import in .RData.](https://github.com/LaCiDIAUFG/iSTATS/blob/master/rdata.jpg)

### import_Brukerfile
This section import a file that can be make in TopSpin with command ` convbin2asc` on each sample and after import on iSTATS choosing each sample you need.

