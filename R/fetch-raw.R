#' Get raw table
#'
#' `get_raw_table()` returns any table from Redivis as a data frame. See the [rlevante documentation](https://levante-framework.github.io/rlevante/index.html) for more information about how to access LEVANTE datasets and codebooks.

#' @param table_name String indicating name of table to get
#' @param data_source String indicating which Redivis dataset to get
#' @param version String indicating which version of `data_source` to get
#' @returns A data frame corresponding to the specified Redivis table.
#' @export
#' @examples
#' \dontrun{
#' runs <- get_raw_table(table_name = "runs", data_source = "levante_data_example_raw:bm7r")
#' }
get_raw_table <- function(table_name, data_source, version = "current") {
  get_dataset_table(table_name, data_source, version)
}
