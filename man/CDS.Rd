% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CDS.R
\name{CDS}
\alias{CDS}
\title{Build a \code{CDS} class object given the input about a CDS contract.}
\usage{
CDS(
  name = NULL,
  contract = "SNAC",
  RED = NULL,
  date = Sys.Date(),
  spread = NULL,
  maturity = NULL,
  tenor = NULL,
  coupon = 100,
  recovery = 0.4,
  currency = "USD",
  notional = 1e+07
)
}
\arguments{
\item{name}{is the name of the reference entity. Optional.}

\item{contract}{is the contract type, default SNAC}

\item{RED}{alphanumeric code assigned to the reference entity. Optional.}

\item{date}{is when the trade is executed, denoted as T. Default is
\code{Sys.Date}. The date format should be in "YYYY-MM-DD".}

\item{spread}{CDS par spread in bps.}

\item{maturity}{date of the CDS contract.}

\item{tenor}{of contract. By default is set as 5}

\item{coupon}{quoted in bps. It specifies the payment amount from the
protection buyer to the seller on a regular basis. The default is 100 bps.}

\item{recovery}{in decimal. Default is 0.4.}

\item{currency}{in which CDS is denominated.}

\item{notional}{is the amount of the underlying asset on which the payments
are based. Default is 10000000, i.e. 10MM.}
}
\value{
a \code{CDS} class object including the input information on the
  contract as well as the valuation results of the contract.
}
\description{
Build a \code{CDS} class object given the input about a CDS contract.
}
\examples{
x <- CDS(date = as.Date("2014-05-07"), tenor = 5, spread = 50, coupon = 100) 

}
