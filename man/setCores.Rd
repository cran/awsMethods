\name{setCores}
\alias{setCores}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Set the number of cores to use for openMP.
}
\description{
The function sets the number of cores used in openMP parallelization
in part of the Fortran code.
}
\usage{
setCores(n, reprt = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
   number of cores to use. If \code{n} is missing the actual number of cores in use
   is returned.
}
  \item{reprt}{Logical, is \code{reprt==TRUE} the number of cores in use is reported.
}
}
\details{
 The number of cores is restricted to integers between 1 (default)
 and the number of available cores. 
 }
\value{
The function returns the number of cores in use.
}
\author{
Felix Anker (anker@wias-berlin.de)
}
\note{
   This function is a slightly modified version of
   function setCores in package spMC version 0.2.2
   written by Luca Sartore <drwolf85@gmail.com>
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ sysdata }
\keyword{ environment }
