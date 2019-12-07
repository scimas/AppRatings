# App Rating Analysis using Generalized Logistic Regression

Authors: Ishita Jain, Mihir Gadgil

# Data

The data can be obtained from [Kaggle](https://www.kaggle.com/gauthamp10/google-playstore-apps). Extract it into the data directory.

# Usage

Running these script requires a file with some utility functions. It can be obtained from the [webpage](https://sites.google.com/site/doingbayesiandataanalysis/software-installation) of the **Doing Bayesian Data Analysis** book by John K. Kruschke.

## Generating the MCMC chains

The `generate_mcmc.R` script can be used to create the MCMC chains.

You will need to modify the script with the names of the models.

For the high rating model:
   1. Change line 11 to `yName = "Rating_high"`
   2. Change line 12 to `fileNameRoot = "appRatingFilesHigh"`

For the medium rating model:
   1. Change line 11 to `yName = "Rating_med"`
   2. Change line 12 to `fileNameRoot = "appRatingFilesMed"`

For the low rating model:
   1. Change line 11 to `yName = "Rating_low"`
   2. Change line 12 to `fileNameRoot = "appRatingFilesLow"`

We could write this in the script itself, but that means the MCMC simulations would run in sequence one after the other. This takes too much time.

Whereas you can run them in parallel if you want to by manually editing the script.

## Analysing the chains

The chains can be analyzed and the posterior distributions can be plotted using the `plotting.R` script.

We have included the results of our MCMC simulations in the repository. You can directly analyze the results without the need of generating new MCMC chains.
