% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_raw_markit.R
\name{get_raw_markit}
\alias{get_raw_markit}
\title{Get raw data from Markit website.}
\usage{
get_raw_markit(date, currency)
}
\arguments{
\item{date}{Date type, is the CDS pricing date.}

\item{currency}{numeric, is the currency that the CDS is traded in.}
}
\value{
a data frame that contains CDS pricing date, currency, interest
 rate expiry and interest rate. The data frame is created with data
 from Markit website
}
\description{
\code{get_raw_markit} downloads the rates zip file from Markit website,
unzips and parses the XML
}
