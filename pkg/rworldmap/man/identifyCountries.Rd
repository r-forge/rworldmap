\name{identifyCountries}
\alias{identifyCountries}
\title{ a function that will print country name and attribute values when a user clicks on the map}
\description{
An interactive function that will print on a map the nearest country name to a user mouse click. 
The user can specify nothing and the function will use a map from the package. Alternatively the user can specifiy 
a data frame or SpatialPolygonsDataFrame in which case they need to define the column containing the country names 
(nameCountryColumn) and optionally a 2nd attribute column to print (nameColumnToPlot).  
}
\usage{
identifyCountries(dF = ""
                 , nameCountryColumn = "NAME"
                 , nameX = "LON"
                 , nameY = "LAT"
                 , nameColumnToPlot = ""
                 , plotSelected = FALSE
                 , ...)
}

\arguments{
  \item{dF}{ data frame or SpatialPolygonsDataFrame}
  
  \item{nameCountryColumn}{name of column containing country names to be printed on the map (could also be set to any other attribute the user wants to query) }
  
  \item{nameX}{name of column containing the X variable (longitude), not needed if dF is a SpatialPolygonsDataFrame }
  
  \item{nameY}{name of column containing the Y variable (lattitude), not needed if dF is a SpatialPolygonsDataFrame }
  
  \item{nameColumnToPlot}{ name of an attribute column in the data frame the value 
  of which will be appended to the country name when it is printed}
  
  \item{plotSelected}{ if set to TRUE a blue outline will be printed 
  around the countries selected when the selection process is finished }
  
  \item{\dots}{ other parameters that can be passed to identify()}
}
\details{
Uses the identify() function, which waits for the user to click on the map, 
and stops when the user right clicks and selects 'stop'.

It uses country centroids, and will give a warning if one is too far away 
(default value of 0.25 inches).

}
\value{ a vector of the indices of the countries selected }

\author{andy south}


\seealso{
identify()
\code{\link{labelCountries}}
}
\examples{
#mapCountryData()
#identifyCountries()

#identifyCountries(nameColumnToPlot = "POP_EST", plotSelected = TRUE)
}

\keyword{ dplot }