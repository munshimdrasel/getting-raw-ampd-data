#PART1: downloading and combining AMPD datasets

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

setwd ("/Users/munshirasel/Google Drive/R/get_data_ampd/data")

#downloading all files from EPA FTP site
#ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/

# ====================================================================
# Instructions:
# just run specific year's code 
#sometimes EPA fst websites fail to download all data
#double check your data


# -all the data are available on HAQ_LAB project directory of ARGO cluster (/projects/HAQ_LAB/data/ampd-data/ampd-data-download/data)
# 
# Don't try to run get_quarterly_ampd_data.R all at once (sometimes data from EPA fst website fail to download data for some reasons (may be poor connections??)): in the code (get_quarterly_ampd_data.R) just go to the specific year and download that year's data
# for data check: look if you have 4 quarter's data from all states in that particular year (50 states: 4X50 =200 files/year)
# data for Arkansas (AK) are available in recent years. before that 49 states data were available (49 states: 4X49 = 196 files/year)


  # ====================================================================
url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/") 
         # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1996/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1997/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1998/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1999/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2000/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2001/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2002/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2003/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2004/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2005/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2006/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2007/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2008/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2009/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2010/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2011/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2012/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2013/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2014/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2015/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2016/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2017/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2018/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2019/",
        # "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2020/")




emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions

for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                                      sep = ""))
}


#1996

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1996/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions

for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}








####1997

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1997/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions

for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}



#1998
url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1998/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions

for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}




#1999

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1999/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions

for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}

#2000
url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2000/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}



###2001

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2001/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}


#2002

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2002/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}


#2003

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2003/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}

#2004
url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2004/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}


#2005
url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2005/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}


#2006
url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2006/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}



#2007
url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2007/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}




#2008
url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2008/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}



#2009

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2009/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}


#2010

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2010/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}


#2011
url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2011/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}


#2012

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2012/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}

#2013
url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2013/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}


#2014

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2014/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}


#2015

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2015/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}

#2016

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2016/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}


#2017

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2017/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}

#2018
url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2018/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}


#2019
url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2019/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}


#2020
url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2020/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}

#2021

url = c("ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/2021/") 

emissions = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
emissions <- strsplit(emissions, "\n")
emissions = unlist(emissions)
emissions


for (i in emissions) {
  download.file(paste(url, i, sep = ""), paste(getwd(), "/", i ,
                                               sep = ""))
}


# getting all the zip files
zipF <- list.files(path = "/Users/munshirasel/Google Drive/R/get_data_ampd/data", 
                   pattern = "*.zip", full.names = TRUE)

# unzip all your files
ldply(.data = zipF, .fun = unzip, exdir = "/Users/munshirasel/Google Drive/R/get_data_ampd/data")


# get the csv files
csv_files <- list.files(path = "/Users/munshirasel/Google Drive/R/get_data_ampd/data", 
                        pattern = "*.csv")

# read the csv files
my_data <- ldply(.data = csv_files, .fun = read.csv)

write.fst(my_data, "/Users/munshirasel/Google Drive/R/get_data_ampd/emissions-raw.fst")

# write.csv(my_data, "/Users/munshirasel/Google Drive/R/ampd-2/emissions-raw.csv")
# 
# save(my_data, file = "/Users/munshirasel/Google Drive/R/ampd-2/emissions-raw.RData")
