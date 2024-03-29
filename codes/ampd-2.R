#loading libraries

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



setwd ("/Users/munshirasel/Google Drive/R/ampd-2/data")


#1995 File download



tmp_filename <- tempfile()
url <- "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/DLY_1995alQ1.zip"
download.file(url, tmp_filename)
unzip(tmp_filename)
e1 <- fread("DLY_1995alQ1.csv")
file.remove(tmp_filename)

tmp_filename <- tempfile()
url <- "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/DLY_1995alQ2.zip"
download.file(url, tmp_filename)
unzip(tmp_filename)
e2 <- fread("DLY_1995alQ2.csv")
file.remove(tmp_filename)

tmp_filename <- tempfile()
url <- "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/DLY_1995alQ3.zip"
download.file(url, tmp_filename)
unzip(tmp_filename)
e3 <- fread("DLY_1995alQ3.csv")
file.remove(tmp_filename)

tmp_filename <- tempfile()
url <- "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/DLY_1995alQ4.zip"
download.file(url, tmp_filename)
unzip(tmp_filename)
e4 <- fread("DLY_1995alQ4.csv")
file.remove(tmp_filename)


##########
tmp_filename <- tempfile()
url <- "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/DLY_1995flQ1.zip"
download.file(url, tmp_filename)
unzip(tmp_filename)
e5 <- fread("DLY_1995flQ1.csv")
file.remove(tmp_filename)

tmp_filename <- tempfile()
url <- "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/DLY_1995flQ2.zip"
download.file(url, tmp_filename)
unzip(tmp_filename)
e6 <- fread("DLY_1995flQ2.csv")
file.remove(tmp_filename)

tmp_filename <- tempfile()
url <- "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/DLY_1995flQ3.zip"
download.file(url, tmp_filename)
unzip(tmp_filename)
e7 <- fread("DLY_1995flQ3.csv")
file.remove(tmp_filename)

tmp_filename <- tempfile()
url <- "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/DLY_1995flQ4.zip"
download.file(url, tmp_filename)
unzip(tmp_filename)
e8 <- fread("DLY_1995flQ4.csv")
file.remove(tmp_filename)

##########
tmp_filename <- tempfile()
url <- "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/DLY_1995ilQ1.zip"
download.file(url, tmp_filename)
unzip(tmp_filename)
e9 <- fread("DLY_1995ilQ1.csv")
file.remove(tmp_filename)

tmp_filename <- tempfile()
url <- "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/DLY_1995ilQ2.zip"
download.file(url, tmp_filename)
unzip(tmp_filename)
e10 <- fread("DLY_1995ilQ2.csv")
file.remove(tmp_filename)

tmp_filename <- tempfile()
url <- "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/DLY_1995ilQ3.zip"
download.file(url, tmp_filename)
unzip(tmp_filename)
e11 <- fread("DLY_1995ilQ3.csv")
file.remove(tmp_filename)

tmp_filename <- tempfile()
url <- "ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/1995/DLY_1995ilQ4.zip"
download.file(url, tmp_filename)
unzip(tmp_filename)
e12 <- fread("DLY_1995ilQ4.csv")
file.remove(tmp_filename)



# this is not convenient to download files one by one. Please go to ampd-2.1R file.
