% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spread_to_pd.R
\name{spread_to_pd}
\alias{spread_to_pd}
\title{Calculate Default Probability with Spread}
\usage{
spread_to_pd(
  x,
  recovery.var = "recovery",
  currency.var = "currency",
  tenor.var = "tenor",
  maturity.var = "maturity",
  date.var = "date",
  spread.var = "spread"
)
}
\arguments{
\item{x}{data frame, contains all the relevant columns.}

\item{recovery.var}{character, column in x containing recovery rates. ISDA
model standard recovery rate assumption is 0.4.}

\item{currency.var}{character, column in x containing currency.}

\item{tenor.var}{character, column in x containing tenors.}

\item{maturity.var}{character, column in x containing maturity date.}

\item{date.var}{character, column in x containing date variable.}

\item{spread.var}{character, column in x containing spread in basis points.}
}
\value{
vector containing the probability of default, calculated by using the
  formula for probability of default given in the Bloomberg Manual
}
\description{
\code{spread_to_pd} approximates the default probability at time given the 
spread
}
\seealso{
\code{\link{pd_to_spread}}
}
