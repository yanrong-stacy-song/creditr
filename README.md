Authors
--------------------------------------------------------
Yanrong Song
yrsong129 at gmail.com

Zijie Zhu
zijie.miller.zhu at gmail.com

David Kane
dave.kane at gmail.com

Heidi Chen 
s.heidi.chen at gmail.com

Yuanchu Dang
yuanchu.dang at williams.edu

Yang Lu 
yang.lu2014 at gmail.com

Kanishka Malik
kanishkamalik at gmail.com

Skylar Smith
skylar.smith at williams.edu


About
--------------------------------------------------------
A Credit Default Swap (CDS) is a financial swap agreement between two
counterparties in which the buyer pays a fixed periodic coupon to the
seller in exchange for protection in the case of a credit event. The
International Swaps and Derivatives Association (ISDA) has created a
set of standard terms for CDS contracts, the so-called ''Standard
Model.'' This allows market participants to calculate cash settlement
from conventional spread quotations, convert between conventional
spread and upfront payments, and build the yield curve of a CDS. 

The **creditr** package provides an open-source implementation of the ISDA 
Standard Model in `R`. It allows users, such as credit risk 
modelers and academic researchers, to value CDS contracts and compute various 
associated risk measures. This package serves as a bridge between the opaque 
mechanics of CDS pricing and a transparent implementation of it.

You can find the package on CRAN at [https://cran.r-project.org/package=creditr](https://cran.r-project.org/package=creditr)

Installation
--------------------------------------------------------
You can install the `creditr` package from CRAN:

```r
install.packages("creditr")
```

Or install the development version from GitHub using the `devtools` package:

```r
# Install devtools if not already installed
install.packages("devtools")

# Install creditr from GitHub
devtools::install_github("yanrong-stacy-song/creditr")
```

Dependencies
--------------------------------------------------------
`creditr` depends on several `R` packages such as:

- `quantmod`
- `devtools`
- `methods`
- `Rcpp`
- `RCurl`
- `XML`
- `zoo`
- `xts`

All dependencies will be automatically installed when using `install.packages()` or `devtools::install_github()`.

Example Usage
--------------------------------------------------------
```r
library(creditr)
sample_cds <- CDS(name     = 'Test',
                  contract = "SNAC",
                  RED      = NULL,
                  date     = as.Date("2014-05-27"),
                  spread   = 50,
                  maturity = NULL,
                  tenor    = 5,
                  coupon   = 100,
                  recovery = 0.4,
                  currency = "USD",
                  notional = 10000000)
sample_cds
```

For additional examples and use cases, please refer to the package vignette.

Acknowledgements
--------------------------------------------------------
Thanks to Jeff Enos for suggesting the package name.