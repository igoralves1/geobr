% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_disaster_risk_area.R
\name{read_disaster_risk_area}
\alias{read_disaster_risk_area}
\title{Download official data of disaster risk areas as an sf object.}
\usage{
read_disaster_risk_area(year = 2010, simplified = TRUE, showProgress = TRUE)
}
\arguments{
\item{year}{A year number in YYYY format (defaults to 2010)}

\item{simplified}{Logic TRUE or FALSE, indicating whether the function returns the 'original' dataset with high resolution or a dataset with 'simplified' borders (Defaults to TRUE)}

\item{showProgress}{Logical. Defaults to (TRUE) display progress bar}
}
\description{
This function reads the the official data of disaster risk areas in Brazil. It specifically focuses
on geodynamic and hydro-meteorological disasters capable of triggering landslides and floods. The
data set covers the whole country. Each risk area polygon (known as 'BATER') has unique code id (column 'geo_bater').
The data set brings information on the extent to which the risk area polygons overlap with census
tracts and block faces (column "acuracia") and number of ris areas within each risk area (column 'num').
Orignal data were generated by IBGE and CEMADEN. For more information about the methodology, see deails
at https://www.ibge.gov.br/geociencias/organizacao-do-territorio/tipologias-do-territorio/21538-populacao-em-areas-de-risco-no-brasil.html
}
\examples{
\donttest{

library(geobr)

# Read all disaster risk areas in an specific year
  d <- read_disaster_risk_area(year=2010)

}


}
