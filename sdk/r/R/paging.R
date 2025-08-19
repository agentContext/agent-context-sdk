#' Create a new Paging
#'
#' @description
#' Paging Class
#'
#' @docType class
#' @title Paging
#' @description Paging Class
#' @format An \code{R6Class} generator object
#' @field limit  integer
#' @field page  integer
#' @field total  integer
#' @field kw 可选，搜索关键词回显 character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Paging <- R6::R6Class(
  "Paging",
  public = list(
    `limit` = NULL,
    `page` = NULL,
    `total` = NULL,
    `kw` = NULL,

    #' @description
    #' Initialize a new Paging class.
    #'
    #' @param limit limit
    #' @param page page
    #' @param total total
    #' @param kw 可选，搜索关键词回显
    #' @param ... Other optional arguments.
    initialize = function(`limit`, `page`, `total`, `kw` = NULL, ...) {
      if (!missing(`limit`)) {
        if (!(is.numeric(`limit`) && length(`limit`) == 1)) {
          stop(paste("Error! Invalid data for `limit`. Must be an integer:", `limit`))
        }
        self$`limit` <- `limit`
      }
      if (!missing(`page`)) {
        if (!(is.numeric(`page`) && length(`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", `page`))
        }
        self$`page` <- `page`
      }
      if (!missing(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`kw`)) {
        if (!(is.character(`kw`) && length(`kw`) == 1)) {
          stop(paste("Error! Invalid data for `kw`. Must be a string:", `kw`))
        }
        self$`kw` <- `kw`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return Paging as a base R list.
    #' @examples
    #' # convert array of Paging (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert Paging to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PagingObject <- list()
      if (!is.null(self$`limit`)) {
        PagingObject[["limit"]] <-
          self$`limit`
      }
      if (!is.null(self$`page`)) {
        PagingObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`total`)) {
        PagingObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`kw`)) {
        PagingObject[["kw"]] <-
          self$`kw`
      }
      return(PagingObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Paging
    #'
    #' @param input_json the JSON input
    #' @return the instance of Paging
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`limit`)) {
        self$`limit` <- this_object$`limit`
      }
      if (!is.null(this_object$`page`)) {
        self$`page` <- this_object$`page`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`kw`)) {
        self$`kw` <- this_object$`kw`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Paging in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Paging
    #'
    #' @param input_json the JSON input
    #' @return the instance of Paging
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`limit` <- this_object$`limit`
      self$`page` <- this_object$`page`
      self$`total` <- this_object$`total`
      self$`kw` <- this_object$`kw`
      self
    },

    #' @description
    #' Validate JSON input with respect to Paging and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `limit`
      if (!is.null(input_json$`limit`)) {
        if (!(is.numeric(input_json$`limit`) && length(input_json$`limit`) == 1)) {
          stop(paste("Error! Invalid data for `limit`. Must be an integer:", input_json$`limit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Paging: the required field `limit` is missing."))
      }
      # check the required field `page`
      if (!is.null(input_json$`page`)) {
        if (!(is.numeric(input_json$`page`) && length(input_json$`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", input_json$`page`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Paging: the required field `page` is missing."))
      }
      # check the required field `total`
      if (!is.null(input_json$`total`)) {
        if (!(is.numeric(input_json$`total`) && length(input_json$`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", input_json$`total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Paging: the required field `total` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Paging
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `limit` is null
      if (is.null(self$`limit`)) {
        return(FALSE)
      }

      # check if the required `page` is null
      if (is.null(self$`page`)) {
        return(FALSE)
      }

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `limit` is null
      if (is.null(self$`limit`)) {
        invalid_fields["limit"] <- "Non-nullable required field `limit` cannot be null."
      }

      # check if the required `page` is null
      if (is.null(self$`page`)) {
        invalid_fields["page"] <- "Non-nullable required field `page` cannot be null."
      }

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        invalid_fields["total"] <- "Non-nullable required field `total` cannot be null."
      }

      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# Paging$unlock()
#
## Below is an example to define the print function
# Paging$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Paging$lock()

