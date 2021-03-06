% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/syntax.R
\name{on}
\alias{on}
\alias{on_push}
\alias{on_pull_request}
\alias{on_schedule}
\title{Create nested list for an \verb{on:} field}
\usage{
on(event, ...)

on_push(tags = NULL, branches = NULL, paths = NULL)

on_pull_request(tags = NULL, branches = NULL, paths = NULL)

on_schedule(cron = NULL)
}
\arguments{
\item{event}{\verb{[character(1)]}
giving the event on which to filter.
Must be \emph{one} of \code{c("push", "pull_request", "schedule")}.}

\item{...}{\verb{[character()]}
giving the filters on which to run.
Must correspond to the filters allowed by \code{event}.}

\item{tags, branches, paths}{\verb{[character()]}
giving the \href{https://help.github.com/en/articles/workflow-syntax-for-github-actions#onpushpull_requesttagsbranches}{tags, branches} or \href{https://help.github.com/en/articles/workflow-syntax-for-github-actions#onpushpull_requestpaths}{modified paths} on which to run the workflow.
Defaults to \code{NULL} for no additional filters.}

\item{cron}{\verb{[character(1)]}
giving UTC times using \href{https://pubs.opengroup.org/onlinepubs/9699919799/utilities/crontab.html#tag_20_25_07}{POSIX cron syntax}.}
}
\description{
Create nested list for an \verb{on:} field
}
\details{
See the \href{https://help.github.com/en/articles/workflow-syntax-for-github-actions}{GitHub Actions workflow syntax} for details.
}
\section{Functions}{
\itemize{
\item \code{on_push}: filter on push event

\item \code{on_pull_request}: filter on pull request

\item \code{on_schedule}: filter on schedule
}}

\examples{
on(
  event = "push",
  branches = c("master", "releases/*")
)
}
\seealso{
Other syntax: 
\code{\link{container}()},
\code{\link{gh_matrix}()},
\code{\link{ghactions_events}},
\code{\link{ghactions_vms}},
\code{\link{job}()},
\code{\link{step}()},
\code{\link{strategy}()},
\code{\link{workflow}()}
}
\concept{syntax}
