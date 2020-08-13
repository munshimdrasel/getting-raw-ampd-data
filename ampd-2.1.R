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
library(RCurl)

setwd ("/Users/munshirasel/Google Drive/R/ampd-2/data")

#downloading all files from EPA FTP site
#ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/



url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/", 
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1996/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1997/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1998/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1999/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2000/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2001/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2002/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2003/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2004/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2005/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2006/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2007/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2008/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2009/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2010/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2011/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2012/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2013/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2014/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2015/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2016/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2017/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2018/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2019/",
        "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2020/")

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



