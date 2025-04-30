#' Generate Fake Names
#'
#' Returns a character vector of fake names.
#'
#' @param n Number of names to generate
#' @return A character vector
#' @export
generate_names <- function(n = 10) {
  charlatan::ch_name(n = n)
}

#' Generate Fake Email Addresses
#'
#' Uses generated names and appends random email domains.
#'
#' @param n Number of email addresses to generate
#' @param domain_pool Optional vector of domains to use
#' @return A character vector of email addresses
#' @export
generate_emails <- function(
    n = 10,
    domain_pool = c("gmail.com", "yahoo.com", "hotmail.com", "outlook.com",
                    "icloud.com", "aol.com", "protonmail.com", "zoho.com",
                    "mail.com", "gmx.com", "yandex.com", "live.com")
) {
  names <- tolower(gsub(" ", ".", charlatan::ch_name(n = n)))
  paste0(names, "@", sample(domain_pool, n, replace = TRUE))
}

#' Generate Random Ages
#'
#' Returns an integer vector of random ages within a specified range.
#'
#' @param n Number of ages
#' @param min_age Minimum age (inclusive)
#' @param max_age Maximum age (inclusive)
#' @return Integer vector of ages
#' @export
generate_ages <- function(n = 10, min_age = 18, max_age = 65) {
  sample(min_age:max_age, n, replace = TRUE)
}

#' Generate Fake Addresses
#'
#' Builds full fake addresses using manually defined components.
#'
#' @param n Number of addresses
#' @return A character vector of fake addresses
#' @export
generate_addresses <- function(n = 10) {
  street_names <- c("West St","Maple St", "Oak Ave", "Pine Rd", "Elm Dr", "Cedar Ln", "Birch Blvd","Eastern Ave", "Palm Dr")
  cities <- c("Springfield", "Rivertown", "Hillview", "Lakewood", "Greenville", "Brookside","King","Jackson")
  states <- c("CA", "NY", "TX", "FL", "IL", "WA", "AZ","WY","ND")
  zips <- sprintf("%05d", sample(10000:99999, n, replace = TRUE))

  paste0(
    sample(100:9999, n, replace = TRUE), " ",
    sample(street_names, n, replace = TRUE), ", ",
    sample(cities, n, replace = TRUE), ", ",
    sample(states, n, replace = TRUE), " ",
    zips
  )
}



#' Generate Mock Dataset
#'
#' Combines name, email, age, job, and address into a data frame.
#'
#' @param n Number of rows to generate
#' @param min_age Minimum age allowed
#' @param max_age Maximum age allowed
#' @param seed Optional random seed for reproducibility
#' @return A data frame with columns: name, email, age, job, address
#' @export
generate_mock_data <- function(n = 10, min_age = 18, max_age = 65, seed = NULL) {
  if (!is.null(seed)) set.seed(seed)

  data.frame(
    name = generate_names(n),
    email = generate_emails(n),
    age = generate_ages(n, min_age, max_age),
    address = generate_addresses(n),
    stringsAsFactors = FALSE
  )
}
