% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compare_sistec.R
\name{compare_sistec}
\alias{compare_sistec}
\title{Comparison between Sistec and a student registration dataset}
\usage{
compare_sistec(sistec, rfept, linked_courses = NULL)
}
\arguments{
\item{sistec}{The folder's path to Sistec files or the Sistec data frame
read by \code{sistec::read_sistec()}function.}

\item{rfept}{The folder's path to students reagistration datasets or a
data frame read by \verb{sistec::read_*()}functions.}

\item{linked_courses}{By default, the linked courses will be estimate using the data
(ARIA estimation). You can specify those links loadind a .xlsx/csv file with linked courses
between the rfept and sistec. The columns must be in this order: INICIO, CICLO,
CURSO_SISTEC    CURSO_RFEPT    CAMPUS. The date in INICIO column must be in
yyyy.period. Ex.: 2019.1 or 2019.2.}
}
\value{
A list of data frames.
}
\description{
A generic function to compare and save the student situation. This function also
shows inconsistencies in the datasets. You can pass the folder's file path or
a data frame read by \verb{sistec::read_*()} functions. In most cases, there are no link
between courses in Sistec and the academic registration. You can pass this relationship
using \code{linked_courses} parameter or using ARIA estimation.
}
\examples{
# these datasets are not real. It is just for test purpose.

# using ARIA estimation for relation between courses 
sistec <- read_sistec(system.file("extdata/examples/sistec",
                                  package = "sistec"))
                                  
qacademico <- read_qacademico(system.file("extdata/examples/qacademico",
                                          package = "sistec"))
                                          
compare_sistec(sistec, qacademico) 

# using linked courses file

linked_courses <- read_linked_courses(system.file("extdata/examples/linked_courses",
                                                  package = "sistec"), "csv")  
 
compare_sistec(sistec, qacademico, linked_courses)   
}
