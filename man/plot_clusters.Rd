% Generated by roxygen2 (4.0.2): do not edit by hand
\name{plot_clusters}
\alias{plot_clusters}
\title{Plots the minimum spanning tree on cells.}
\usage{
plot_clusters(cds, clustering, drawSummary = TRUE, sumFun = mean_cl_boot,
  ncol = NULL, nrow = NULL, row_samples = NULL, callout_ids = NULL)
}
\arguments{
\item{cds}{CellDataSet for the experiment}

\item{clustering}{a clustering object produced by clusterCells}

\item{drawSummary}{whether to draw the summary line for each cluster}

\item{sumFun}{whether the function used to generate the summary for each cluster}

\item{ncol}{number of columns used to layout the faceted cluster panels}

\item{nrow}{number of columns used to layout the faceted cluster panels}

\item{row_samples}{how many genes to randomly select from the data}

\item{callout_ids}{a vector of gene names or gene ids to manually render as part of the plot}
}
\value{
a ggplot2 plot object
}
\description{
Plots the minimum spanning tree on cells.
}
\examples{
\dontrun{
full_model_fits <- fitModel(HSMM_filtered[sample(nrow(fData(HSMM_filtered)), 100),],  modelFormulaStr="expression~VGAM::bs(Pseudotime)")
expression_curve_matrix <- responseMatrix(full_model_fits)
clusters <- clusterGenes(expression_curve_matrix, k=4)
plot_clusters(HSMM_filtered[ordering_genes,], clusters)
}
}

