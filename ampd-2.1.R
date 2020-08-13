library(ncdf4)
library(data.table)
library(tidyverse)
library(parallel)
library(sf)
library(viridis)
library(ggplot2)
library(scales)
library(ggsn)
library(gridExtra)
library(ggmap)
library(ggrepel)
library(fst)
library(measurements)
library(XML)
library(plyr)

setwd ("/Users/munshirasel/Google Drive/R/ampd-2/data")


url = "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/"
filenames = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
filenames <- strsplit(filenames, "\n")
filenames = unlist(filenames)
filenames

for (filename in filenames) {
  download.file(paste(url, filename, sep = ""), paste(getwd(), "/", filename,
                                                      sep = ""))
}

# get all the zip files
zipF <- list.files(path = "/Users/munshirasel/Google Drive/R/ampd-2/data", 
                   pattern = "*.zip", full.names = TRUE)

# unzip all your files
ldply(.data = zipF, .fun = unzip, exdir = "/Users/munshirasel/Google Drive/R/ampd-2/data")


# get the csv files
csv_files <- list.files(path = "/Users/munshirasel/Google Drive/R/ampd-2/data", 
                        pattern = "*.csv")

# read the csv files
 my_data <- ldply(.data = csv_files, .fun = read.csv)



