# Get item parameters

`get_items()` returns information about the item IRT parameters that
were used for creating scores. See the [levante-r
documentation](https://levante-framework.github.io/levante-r/index.html)
for more information about how to access LEVANTE datasets and codebooks.

## Usage

``` r
get_items(data_source, version = "current")
```

## Arguments

- data_source:

  Name of Redivis dataset

- version:

  Version of Redivis dataset

## Value

A data frame where each row is an item.

## Examples

``` r
if (FALSE) { # \dontrun{
items <- get_items(data_source = "levante_data_example:d0rt", version = "current")
} # }
```
