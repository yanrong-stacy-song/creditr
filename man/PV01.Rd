% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PV01.R
\name{PV01}
\alias{PV01}
\title{Calculate PV01}
\usage{
PV01(
  x,
  principal.var = "principal",
  spread.var = "spread",
  coupon.var = "coupon",
  notional.var = "notional"
)
}
\arguments{
\item{x}{data frame, contains all the relevant columns.}

\item{principal.var}{name of the column containing the principal or clean
upfront values of the CDS}

\item{spread.var}{character, column in x containing spread in basis points.}

\item{coupon.var}{character, column in x containing coupon rates in basis 
points. It specifies the payment amount from the protection buyer to the 
seller on an annual basis.}

\item{notional.var}{character, column in x containing the amount of the 
underlying asset on which the payments are based.}
}
\value{
Vector containing the PV01 values
}
\description{
\code{PV01} to calculate present value 01 or present value of a stream of 1bp
payments
}
