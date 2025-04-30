# MockDataGen
Provides simple functions to generate mock datasets including names, ages, emails, and dates.  Designed for quickly creating fake data for testing, teaching, and demonstrations. This data is great to use  when one needs quick data or they cannot use real sensitive data.

## 📦 INSTALLATION

You can install the development version of this package directly from GitHub:

```r
Install MockDataGen from GitHub
devtools::install_github("garciar14/MockDataGen")
```
## USAGE
```r
generate_names(3)
#> [1] "Emily Smith"   "John Davis"    "Alex Johnson"
```
```r
generate_addresses(2)
#> [1] "5932 Cedar Ln, Rivertown, NY 63958"
#> [2] "823 Oak Ave, Lakewood, IL 27491"
```
```r
generate_ages(3, min_age = 21, max_age = 50)
#> [1] 45 22 39
```
```r
generate_emails(3)
#> [1] "alex.johnson@gmail.com"   "emily.smith@yahoo.com"   "john.davis@outlook.com"
```
```r
generate_mock_data(2)
#>          name                  email age                           address
#> 1 John Davis   john.davis@yahoo.com  29   5932 Cedar Ln, Rivertown, NY 63958
#> 2 Emily Smith emily.smith@gmail.com  36   823 Oak Ave, Lakewood, IL 27491
```
## FUNCTIONS

| Function               | Description                                   |
|------------------------|-----------------------------------------------|
| `generate_names()`     | Generate random full names                    |
| `generate_emails()`    | Generate emails with realistic domain names   |
| `generate_ages()`      | Create a numeric vector of random ages        |
| `generate_addresses()` | Generate full fake addresses                  |
| `generate_mock_data()` | Combine all fields into one data frame        |

## LICENSE

This package is licensed under the CC0 License

## AUTHOR
Ronald Garcia
garciar14@usf.edu
