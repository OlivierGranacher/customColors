% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/colorTools.R
\name{extractColors}
\alias{extractColors}
\title{extractColors}
\usage{
extractColors(..., colorVector = customColors::colorVectorPotline)
}
\arguments{
\item{...}{names of colors to return - if NULL returns all colors}

\item{colorVector}{named color vector}
}
\value{
named vector of selected colors
}
\description{
EXtract colors from custom color vector by color name
}
\examples{
extractColors("red", "brown")


}
