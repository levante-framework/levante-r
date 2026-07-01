# Get item parameters

`get_parameters()` returns information about the item IRT parameters
that were used for creating scores. See the [rlevante
documentation](https://levante-framework.github.io/rlevante/index.html)
for more information about how to access LEVANTE datasets and codebooks.

## Usage

``` r
get_parameters(data_source, version = "current")
```

## Arguments

- data_source:

  Name of Redivis dataset

- version:

  Version of Redivis dataset

## Value

A data frame where each row is an item

## Examples

``` r
if (FALSE) { # \dontrun{
parameters <- get_parameters(data_source = "levante_data_example:d0rt", version = "current")
} # }
```
