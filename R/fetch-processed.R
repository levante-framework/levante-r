get_dataset_table <- \(tbl_name, ds_name, ds_version) {
  suppressWarnings(redivis::redivis$organization("levante")$dataset(ds_name, version = ds_version)$table(tbl_name)$to_tibble())
}

#' Get participants
#'
#' `get_participants()` returns information about participants as a data frame.
#' See the [levante-r
#' documentation](https://levante-framework.github.io/levante-r/index.html) for
#' more information about how to access LEVANTE datasets and codebooks.
#' 
#' @param data_source Name of Redivis dataset
#' @param version Version of Redivis dataset
#' 
#' @returns A data frame where each row contains information about a child
#'   participant.
#' @export
#' @examples
#' \dontrun{
#' participants <- get_participants(data_source = "levante_data_example:d0rt", version = "current")
#' }
get_participants <- function(data_source, version = "current") {
  get_dataset_table("participants", data_source, version)
}

#' Get scores
#'
#' `get_scores()` returns information about scores as a data frame. See the
#' [levante-r
#' documentation](https://levante-framework.github.io/levante-r/index.html) for
#' more information about how to access LEVANTE datasets and codebooks.
#' 
#' @inheritParams get_participants
#' 
#' @returns A data frame where each row is a task ability score. See our
#'   [Scoring and Psychometrics
#'   page](https://researcher.levante-network.org/measures/scoring-and-psychometrics)
#'   to learn how to interpret scores.
#' @export
#' @examples
#' \dontrun{
#' scores <- get_scores(data_source = "levante_data_example:d0rt", version = "current")
#' }
get_scores <- function(data_source, version = "current") {
  get_dataset_table("scores", data_source, version)
}

#' Get surveys
#'
#' `get_surveys()` returns information about survey responses as a data frame.
#' See the [levante-r
#' documentation](https://levante-framework.github.io/levante-r/index.html) for
#' more information about how to access LEVANTE datasets and codebooks.
#' 
#' 
#' @inheritParams get_participants
#' 
#' @returns A data frame where each row is a survey item response.
#' @export
#' @examples
#' \dontrun{
#' surveys <- get_surveys(data_source = "levante_data_example:d0rt", version = "current")
#' }
get_surveys <- function(data_source, version = "current") {
  get_dataset_table("surveys", data_source, version)
}

#' Get trials
#'
#' `get_trials()` returns information about each trial as a data frame. See the
#' [levante-r
#' documentation](https://levante-framework.github.io/levante-r/index.html) for
#' more information about how to access LEVANTE datasets and codebooks.
#' 
#' @inheritParams get_participants
#' 
#' @returns A data frame where each row is a trial.
#' @export
#' @examples
#' \dontrun{
#' trials <- get_trials(data_source = "levante_data_example:d0rt", version = "current")
#' }
get_trials <- function(data_source, version = "current") {
  message("Measures adapted from the Rapid Online Assessment of Reading (Language Sounds, Sentence Reading, Word Reading) are covered under a Stanford Academic License (https://github.com/yeatmanlab/roar-mp/blob/main/LICENSE).")
  get_dataset_table("trials", data_source, version)
}

#' Get item parameters
#'
#' `get_items()` returns information about the item IRT parameters that
#' were used for creating scores. See the [levante-r
#' documentation](https://levante-framework.github.io/levante-r/index.html) for
#' more information about how to access LEVANTE datasets and codebooks.
#' 
#' @inheritParams get_participants
#' 
#' @returns A data frame where each row is an item.
#' @export
#' @examples
#' \dontrun{
#' items <- get_items(data_source = "levante_data_example:d0rt", version = "current")
#' }
get_items <- function(data_source, version = "current") {
  get_dataset_table("items", data_source, version)
}
