#' Get item parameters
#'
#' `get_item_parameters()` returns the IRT item parameters used in LEVANTE scoring as a data frame. See the [rlevante documentation](https://levante-framework.github.io/rlevante/index.html) for more information about how to access LEVANTE datasets and codebooks.
#' @param version Version of the Redivis scoring metadata dataset.
#' @returns A data frame where each row is an item parameter estimate. See our [Scoring and Psychometrics page](https://researcher.levante-network.org/measures/scoring-and-psychometrics) to learn how to interpret these values.
#' @export
#' @examples
#' \dontrun{
#' item_parameters <- get_item_parameters()
#' }
get_item_parameters <- function(version = "current") {
  ds <- redivis::redivis$organization("levante")$dataset("levante_metadata_scoring:e97h", version = version)
  message(glue::glue("Fetching item parameters"))
  suppressWarnings(
    ds$table("item_parameters:4cvk")$to_tibble()
  )
}
