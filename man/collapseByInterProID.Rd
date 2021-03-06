% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/collapseByInterProID.R
\name{collapseByInterProID}
\alias{collapseByInterProID}
\title{Collapse InterProScan output to one protein sequence feature per InterProID (or other feature attribute)}
\usage{
collapseByInterProID(InterProScan_features, id_col = "Dbxref")
}
\arguments{
\item{InterProScan_features}{GRanges, the output of \code{readInterProGFF3}, \code{SubsetByInterProEntryType} or \code{addInterProEntryTypes} function}

\item{id_col}{character (1L) containing the name of the column which defines a feature attribute per which to collapse features (combination of Protein ID and this feature is used)}
}
\value{
\link[GenomicRanges]{GRanges-class} object containing InterProScan output with all protein sequence features collapsed per InterProID (or other feature attribute). Ranges are reduced \link[GenomicRanges]{reduce}, metadata is collapsed in one line and separated with "|".
}
\description{
Collapse InterProScan output to one protein sequence feature per InterProID (or other feature attribute)
}
\examples{
InterProScan_domains_nonred = collapseByInterProID(InterProScan_features = InterProScan_domains, id_col = "Dbxref")
}
\seealso{
\link[MItools]{readInterProGFF3}
}
\author{
Vitalii Kleshchevnikov
}
