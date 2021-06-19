# getting raw ampd dataset

Downloading all the quarterly emissions daily data automatically from EPA FTP website (ftp://newftp.epa.gov/DMDnLoad/emissions/daily/quarterly/)


-go to codes folder and use get_quarterly_ampd_data.R

-all the data are available on HAQ_LAB project directory of ARGO cluster (/projects/HAQ_LAB/data/ampd-data/ampd-data-download/data)

- Don't try to run get_quarterly_ampd_data.R all at once (sometimes data from EPA fst website fail to download data for some reasons (may be poor connections??)): in the code (get_quarterly_ampd_data.R) just go to the specific year and download that year's data
- for data check: look if you have 4 quarter's data from all states in that particular year (50 states: 4X50 =200 files/year)
- data for Arkansas (AK) are available in recent years. before that 49 states data were available (49 states: 4X49 = 196 files/year)


