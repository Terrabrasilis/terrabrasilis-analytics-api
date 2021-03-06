#' set header for apps
#'
#' @param handle a curl handle used to configure a request
#' 
#' @name appsHeader
#' @export
appsHeader <- function(handle) {
  
  curl::handle_setheaders(handle,
                          "Content-Type" = "application/json",
                          "Access-Control-Allow-Origin" = "*")
  
  return(handle)
  
}

#' set header for configs
#'
#' @param handle a curl handle used to configure a request
#' @param appIdentifier define the application identifier
#' 
#' @name configHeader
#' @export
configHeader <- function(handle, appIdentifier) {
  
  curl::handle_setheaders(handle,
                          "Content-Type" = "application/json",
                          "Access-Control-Allow-Origin" = "*",
                          "App-Identifier" = appIdentifier
                          )
  
  return(handle)
  
}

#' set handle for handle
#'
#' @param handle a curl handle used to configure a request
#' @param appIdentifier application identifier
#' 
#' @name dataHeader
#' @export
dataHeader <- function(handle, appIdentifier) {
  
  curl::handle_setheaders(handle,
                          "Content-Type" = "application/json",
                          "Access-Control-Allow-Origin" = "*",
                          "App-Identifier" = appIdentifier
                          )
  
  return(handle)
  
}

#' send request
#'
#' @param URL server URL server
#' @param handle a curl handle used to configure a request
#' 
#' @name tba_request
#' @export
request <- function(URL, handle) {
  
  req <- curl::curl_fetch_memory(url = URL, handle = handle)
  
  resJSON <- jsonlite::fromJSON(rawToChar(req$content))
  
  return(resJSON)
    
}