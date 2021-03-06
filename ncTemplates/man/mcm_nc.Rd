% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mcm_nc.R
\name{mcm_nc}
\alias{mcm_nc}
\title{Current Meter netCDF template}
\usage{
mcm_nc(obj, metadata, filename = NULL)
}
\arguments{
\item{obj}{an odf object from oce which contains mcm data}

\item{metadata}{a csv file following the standard template which includes all necessary metadata}

\item{filename}{the desired name for the netCDF file produced}
}
\value{
netCDF file with variables temperature, salinity, pressure, current
  direction, current speed, time, time string, latitude, longitude, station
  (maximum of 5 variables not including time or lat/lon -- if your instrument
  exceeds this please adjust netCDF template accordingly)
}
\description{
Current Meter netCDF template
}
\examples{
file <- list.files('.', pattern = "MCM*...*.ODF")
metadata <- ('MCM_SAMPLE_METADATA.csv')
obj <- read.odf(file)
mcm_nc(obj, metadata)
}
