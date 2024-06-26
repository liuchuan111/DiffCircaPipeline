% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DCP_DiffR2.R
\name{LR_deltaR2}
\alias{LR_deltaR2}
\title{Likelihood method to obtain p-value for differential R2.}
\usage{
LR_deltaR2(tt1, yy1, tt2, yy2, period = 24, FN = TRUE)
}
\arguments{
\item{tt1}{Time vector of condition 1}

\item{yy1}{Expression vector of condition 1}

\item{tt2}{Time vector of condition 2}

\item{yy2}{Expression vector of condition 2}

\item{period}{Period of the since curve. Default is 24.}

\item{FN}{Correct for finite sample.}
}
\value{
P-value for delta R2.
Formula 1: \eqn{yy = amp \times sin(2\pi/period \times (phase + tt)) + offset}
Formula 2: \eqn{yy = A \times sin(2\pi/period \times tt) + B * cos(2*pi/period * tt) + offset}
}
\description{
Likelihood method to obtain p-value for differential R2.
}
\details{
Likelihood method to obtain p-value for differential R2.
}
\examples{
set.seed(32608)
n <- 50
tt1 <- runif(n,0,24)
Amp1 <- 2
Phase1 <- 6
Offset1 <- 3
yy1 <- Amp1 * sin(2*pi/24 * (tt1 + Phase1)) + Offset1 + rnorm(n,0,1)
tt2 <- runif(n,0,24)
Amp2 <- 3
Phase2 <- 5
Offset2 <- 2
yy2 <- Amp2 * sin(2*pi/24 * (tt2 + Phase2)) + Offset2 + rnorm(n,0,1)
LR_deltaR2(tt1, yy1, tt2, yy2)
}
\author{
Caleb (copied from Caleb's github and fixed a bug)
}
