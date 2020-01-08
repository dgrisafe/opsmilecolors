# opsmilecolors

## Introduction

The color identity for Operation Smile is programmed for ggplot2 and other data visualization in R. 

These colors will likely be useful for future Operation Smile projects and for any other R analyst who wants to use the same theme for the organization.

These functions were extrapolated from a [blog post](https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2) by @drsimonj.

## Installation

To load this colors package, you'll need to download this package directly from this GitHub. In order to do this, you'll have to first download the devtools package from CRAN, then load the devtools library, then install the opsmilecolors package from GitHub.

```r
# install devtools from CRAN
install.packages("devtools")

# load devtools
library(devtools)

# install opsmilecolors from GitHub
install_github("dgrisafe/opsmilecolors")
```

Now you should have the opsmilecolors package on your computer, and you can load it just like any other R package.

```r
# load opsmilecolors
library(opsmilecolors)
```

## Visualize Colors

```r
opsmile_palettes
```
