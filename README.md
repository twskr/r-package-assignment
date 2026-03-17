# week2pkg

A minimal R package that turns Week 2 scripts into reusable, documented,
and tested functions.

> Travis badge is intentionally omitted until the repository is connected to
> Travis CI and the first build passes (to avoid a fake badge URL).

## Usage

```r
library(week2pkg)

x <- c(1, 2, 3, 4, 5)
summarize_numeric(x)
zscore_numeric(x)
```

## Development checks

```r
devtools::document()
devtools::test()
devtools::check()
```

## Add Travis badge after first passing build

1. Enable the GitHub repository in Travis CI.
2. Wait for a successful build on `main`.
3. Copy Travis' generated markdown badge snippet into this README.
