#' Get variable metadata
#'
#' `get_variables()` returns metadata about the variables in a Redivis dataset.
#' See the [levante-r
#' documentation](https://levante-framework.github.io/levante-r/index.html) for
#' more information about how to access LEVANTE datasets and codebooks.
#'
#' @inheritParams get_participants
#'
#' @returns A data frame where each row is a variable.
#' @export
#' @examples
#' \dontrun{
#' variables <- get_variables(data_source = "levante_data_example:d0rt", version = "current")
#' }
get_variables <- \(data_source, version = "current") {
  ds <- redivis::redivis$organization("levante")$dataset(data_source, version = version)
  tables <- ds$list_tables()
  table_names <- purrr::map_chr(tables, \(tbl) tbl$name)
  get_tbl_vars <- \(tbl) {
    tbl_vars <- tbl$list_variables()
    var_props <- purrr::map(tbl_vars, \(v) v$get()$properties)
    purrr::map(var_props, \(v) tibble(!!!v)) |> purrr::list_rbind() |>
      select(any_of(c("name", "type", "label", "description")))
  }
  var_df <- tables |>
    purrr::set_names(table_names) |>
    purrr::map(get_tbl_vars) |>
    purrr::list_rbind(names_to = "table")
}
