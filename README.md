# MockDataGen
Provides simple functions to generate mock datasets including names, ages, emails, and dates.  Designed for quickly creating fake data for testing, teaching, and demonstrations. This data is great to use  when one needs quick data or they cannot use real sensitive data.

## 📦 INSTALLATION

You can install the development version of this package directly from GitHub:

```r
Install MockDataGen from GitHub
devtools::install_github("garciar14/MockDataGen")
```
## USAGE

# Generate 5 random names
generate_names(5)

# Generate 5 random email addresses
generate_emails(5)

# Generate 5 random ages between 21 and 60
generate_ages(5, min_age = 21, max_age = 60)

# Generate 5 fake mailing addresses
generate_addresses(5)

# Create a complete mock dataset
generate_mock_data(n = 5, min_age = 18, max_age = 65, seed = 123)

| Function               | Description                                   |
|------------------------|-----------------------------------------------|
| `generate_names()`     | Generate random full names                    |
| `generate_emails()`    | Generate emails with realistic domain names   |
| `generate_ages()`      | Create a numeric vector of random ages        |
| `generate_addresses()` | Generate full fake addresses                  |
| `generate_mock_data()` | Combine all fields into one data frame        |

