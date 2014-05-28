% Generated by roxygen2 (4.0.1): do not edit by hand
\name{TaxonChildren}
\alias{TaxonChildren}
\alias{TaxonParents}
\title{Gathers A List Of Taxonomic Parents and Offspring}
\usage{
TaxonChildren(MyHiers)

TaxonParents(MyHier)
}
\arguments{
\item{MyHiers}{A vector or single filename for downloaded hierarchy pages}

\item{MyHier}{A single filename for downloaded hierarchy pages}
}
\value{
\code{TaxonChildren} will report the primary offspring of a taxon if the hierarchy page
reports this information.  \code{TaxonParents} will return the list of taxonomic parentage
}
\description{
This function goes through the hierarchy pages to collect taxonomic offspring and parantage.
}
\examples{
\dontrun{
# Simple example using Reol data:
data(MyHiers)
TaxonChildren(MyHiers)
TaxonParents(MyHiers[1])

# Species of Anolis off NCBI
data(MyHiers)
TaxonChildren(MyHiers)

# Example to get all Anolis species from NCBI
eolAnolis <- DownloadSearchedTaxa("Anolis", to.file=FALSE)
hierAnolis <- DownloadHierarchy(eolAnolis, to.file=FALSE, database="NCBI Taxonomy")
TaxonChildren(hierAnolis)

# Species of Anolis off The Reptile Database
eolAnolis <- DownloadSearchedTaxa("Anolis", to.file=FALSE)
repdbAnolis <- DownloadHierarchy(eolAnolis, to.file=FALSE, database="The Reptile Database")
TaxonChildren(repdbAnolis)
}
}
\seealso{
\code{\link{MakeTreeData}}
}

