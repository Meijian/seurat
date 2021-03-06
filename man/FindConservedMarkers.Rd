% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/differential_expression.R
\name{FindConservedMarkers}
\alias{FindConservedMarkers}
\title{Finds markers that are conserved between the two groups}
\usage{
FindConservedMarkers(object, ident.1, ident.2 = NULL, grouping.var,
  assay.type = "RNA", slot = "data", meta.method = minimump,
  verbose = TRUE, ...)
}
\arguments{
\item{object}{An object}

\item{ident.1}{Identity class to define markers for}

\item{ident.2}{A second identity class for comparison. If NULL (default) -
use all other cells for comparison.}

\item{grouping.var}{grouping variable}

\item{assay.type}{Type of assay to fetch data for (default is RNA)}

\item{slot}{Slot to pull data from; note that if \code{test.use} is "negbinom", "poisson", or "DESeq2",
\code{slot} will be set to "counts"}

\item{meta.method}{method for combining p-values. Should be a function from
the metap package (NOTE: pass the function, not a string)}

\item{verbose}{Print a progress bar once expression testing begins}

\item{\dots}{parameters to pass to FindMarkers}
}
\value{
Matrix containing a ranked list of putative conserved markers, and
associated statistics (p-values within each group and a combined p-value
(such as Fishers combined p-value or others from the MetaDE package),
percentage of cells expressing the marker, average differences)
}
\description{
Finds markers that are conserved between the two groups
}
\examples{
\dontrun{
pbmc_small
# Create a simulated grouping variable
pbmc_small[['groups']] <- sample(x = c('g1', 'g2'), size = ncol(x = pbmc_small), replace = TRUE)
FindConservedMarkers(pbmc_small, ident.1 = 0, ident.2 = 1, grouping.var = "groups")
}

}
