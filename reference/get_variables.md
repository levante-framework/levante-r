# Get variable metadata

`get_variables()` returns metadata about the variables in a Redivis
dataset. See the [levante-r
documentation](https://levante-framework.github.io/levante-r/index.html)
for more information about how to access LEVANTE datasets and codebooks.

## Usage

``` r
get_variables(data_source, version = "current")
```

## Arguments

- data_source:

  Name of Redivis dataset

- version:

  Version of Redivis dataset

## Value

A data frame where each row is a variable.

## Examples

``` r
if (FALSE) { # \dontrun{
variables <- get_variables(data_source = "levante_data_example:d0rt", version = "current")
} # }
```
