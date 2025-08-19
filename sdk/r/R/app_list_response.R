#' Create a new AppListResponse
#'
#' @description
#' AppListResponse Class
#'
#' @docType class
#' @title AppListResponse
#' @description AppListResponse Class
#' @format An \code{R6Class} generator object
#' @field data  list(\link{App})
#' @field paging  \link{Paging}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AppListResponse <- R6::R6Class(
  "AppListResponse",
  public = list(
    `data` = NULL,
    `paging` = NULL,

    #' @description
    #' Initialize a new AppListResponse class.
    #'
    #' @param data data
    #' @param paging paging
    #' @param ... Other optional arguments.
    initialize = function(`data`, `paging`, ...) {
      if (!missing(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
      if (!missing(`paging`)) {
        stopifnot(R6::is.R6(`paging`))
        self$`paging` <- `paging`
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
    #' @return AppListResponse as a base R list.
    #' @examples
    #' # convert array of AppListResponse (x) to a data frame
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
    #' Convert AppListResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AppListResponseObject <- list()
      if (!is.null(self$`data`)) {
        AppListResponseObject[["data"]] <-
          lapply(self$`data`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`paging`)) {
        AppListResponseObject[["paging"]] <-
          self$`paging`$toSimpleType()
      }
      return(AppListResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AppListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AppListResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[App]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`paging`)) {
        `paging_object` <- Paging$new()
        `paging_object`$fromJSON(jsonlite::toJSON(this_object$`paging`, auto_unbox = TRUE, digits = NA))
        self$`paging` <- `paging_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AppListResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AppListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AppListResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[App]", loadNamespace("openapi"))
      self$`paging` <- Paging$new()$fromJSON(jsonlite::toJSON(this_object$`paging`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AppListResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(is.vector(input_json$`data`), length(input_json$`data`) != 0)
        tmp <- sapply(input_json$`data`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AppListResponse: the required field `data` is missing."))
      }
      # check the required field `paging`
      if (!is.null(input_json$`paging`)) {
        stopifnot(R6::is.R6(input_json$`paging`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AppListResponse: the required field `paging` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AppListResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `data` is null
      if (is.null(self$`data`)) {
        return(FALSE)
      }

      # check if the required `paging` is null
      if (is.null(self$`paging`)) {
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
      # check if the required `data` is null
      if (is.null(self$`data`)) {
        invalid_fields["data"] <- "Non-nullable required field `data` cannot be null."
      }

      # check if the required `paging` is null
      if (is.null(self$`paging`)) {
        invalid_fields["paging"] <- "Non-nullable required field `paging` cannot be null."
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
# AppListResponse$unlock()
#
## Below is an example to define the print function
# AppListResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AppListResponse$lock()

