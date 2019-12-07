#------------------------------------------------------------------------------- 
# Optional generic preliminaries:
graphics.off() # This closes all of R's graphics windows.
rm(list=ls())  # Careful! This clears all of R's memory!

library(plyr)
source("modelling.R")

mydata <- load_data("data/Google-Playstore-32K.csv")
xName = c("Reviews", "Installs", "Price")
yName = "Rating_high"
fileNameRoot = "appRatingFilesHigh"
numSavedSteps=15000 ; thinSteps=2
# Generate the MCMC chain:
mcmcCoda = genMCMC( data=mydata , xName=xName , yName=yName , 
                    numSavedSteps=numSavedSteps , thinSteps=thinSteps , 
                    saveName=fileNameRoot )
#------------------------------------------------------------------------------- 

