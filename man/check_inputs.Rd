% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_inputs.R
\name{check_inputs}
\alias{check_inputs}
\title{Check whether inputs from the data frame are valid.}
\usage{
check_inputs(
  x,
  date.var = "date",
  currency.var = "currency",
  maturity.var = "maturity",
  tenor.var = "tenor",
  spread.var = "spread",
  coupon.var = "coupon",
  notional.var = "notional",
  notional = 1e+06,
  recovery.var = "recovery",
  recovery = 0.4
)
}
\arguments{
\item{x}{data frame, contains all the relevant columns.}

\item{date.var}{character, column in x containing date variable.}

\item{currency.var}{character, column in x containing currency.}

\item{maturity.var}{character, column in x containing maturity date.}

\item{tenor.var}{character, column in x containing tenors.}

\item{spread.var}{character, column in x containing spread in basis points.}

\item{coupon.var}{character, column in x containing coupon rates in basis 
points. It specifies the payment amount from the protection buyer to the 
seller on an annual basis.}

\item{notional.var}{character, column in x containing the amount of the 
underlying asset on which the payments are based.}

\item{notional}{numeric, the notional amount for all pricing if there isn't a
notional.var}

\item{recovery.var}{character, column in x containing recovery rates. ISDA
model standard recovery rate assumption is 0.4.}

\item{recovery}{numeric, the recovery rate for all pricing if there isn't a 
recovery.var}
}
\value{
a data frame if not stopped by errors.
}
\description{
\code{check_inputs} checks whether a data frame's inputs are valid. It is a 
minimum set of checks. Things such as recovery var are not checked, 
because some functions don't need them as input.
}
\examples{
x <- data.frame(date = as.Date(c("2014-04-22", "2014-04-22")),
                currency = c("USD", "EUR"),
                tenor = c(5, 5),
                spread = c(120, 110),
                coupon = c(100, 100),
                recovery = c(0.4, 0.4),
                notional = c(1000000, 1000000))
x <- check_inputs(x)

}
