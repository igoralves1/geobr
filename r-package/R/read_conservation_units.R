#' Download official data of Brazilian conservation untis as an sf object.
#'
#' This data set covers the whole of Brazil and it includes the polygons of all conservation untis present in Brazilian
#' territory. The last update of the data was 09-2019. The original
#' data comes from MMA and can be found at http://mapas.mma.gov.br/i3geo/datadownload.htm .
#'
#' @param date A date number in YYYYMM format (Defaults to 201909)
#' @param simplified Logic TRUE or FALSE, indicating whether the function returns the 'original' dataset with high resolution or a dataset with 'simplified' borders (Default to TRUE)
#' @param showProgress Logical. Defaults to (TRUE) display progress bar
#'
#' @export
#' @family general area functions
#' @examples \donttest{
#'
#' library(geobr)
#'
#' # Read conservation_units
#'   b <- read_conservation_units(date=201909)
#'}
read_conservation_units <- function(date=201909, simplified=TRUE, showProgress=TRUE){

  # Get metadata with data url addresses
  temp_meta <- select_metadata(geography="conservation_units", year=date, simplified=simplified)

  # list paths of files to download
  file_url <- as.character(temp_meta$download_path)

  # download files
  temp_sf <- download_gpkg(file_url, progress_bar = showProgress)
  return(temp_sf)
}
