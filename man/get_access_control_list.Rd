% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3utils.R
\name{get_access_control_list}
\alias{get_access_control_list}
\title{Get access control list}
\usage{
get_access_control_list(access_key_id, secret_access_key, bucket_name,
  key_name = NULL, is_ordinary_calling_format = FALSE, region = NULL)
}
\arguments{
\item{access_key_id}{AWS access key id}

\item{secret_access_key}{AWS secret access key}

\item{bucket_name}{S3 bucket name}

\item{key_name}{S3 key name}

\item{is_ordinary_calling_format}{Connection calling format}

\item{region}{Connection region}
}
\value{
a data frame of access control information
}
\description{
\code{get_access_control_list} shows permission information.
}
\details{
If \code{key_name} is \code{NULL}, the bucket's permission information is shown - otherwise the key's permission info.

For \code{is_ordinary_calling_format} and \code{region}, see \link{connect_test}.
}
\examples{
\dontrun{

get_access_control_list('aws-access-id', 'secret-access-key', 'bucket-name')
get_access_control_list('aws-access-id', 'secret-access-key', 'bucket-name', 'key-name')
}
}

