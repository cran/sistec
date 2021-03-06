% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aria.R
\name{aria}
\alias{aria}
\title{Aria web application}
\usage{
aria(
  output_path = NULL,
  output_folder_name = "ARIA",
  max_file_size = 100,
  options_port = 8888,
  options_launch_browser = TRUE,
  test_mode = TRUE,
  version = "offline"
)
}
\arguments{
\item{output_path}{The folder where you want to save the results.}

\item{output_folder_name}{The folder's name you want to save the results.}

\item{max_file_size}{The maximum file size in megabytes.}

\item{options_port}{The TCP port that the application should listen on, usually 8888.}

\item{options_launch_browser}{If true, the system's default web browser will be
launched automatically after the app is started.}

\item{test_mode}{Use FALSE in production and TRUE when you are testing. In production,
when you close the browser ,the app and the R session will be closed. In test, only the app will
close when you close the browser.}

\item{version}{A string. Choose "offline" or "online" version.}
}
\value{
A web application.
}
\description{
This is the web application using the sistec package. It was created to ease the
work using the package, but you can have the same results reading the
files (sistec::read_rfept()), comparing the results with (sistec::compare_sistec()) and write
the outputs (sistec::write_output()).
}
