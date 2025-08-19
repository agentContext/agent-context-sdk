#' Create a new GuideItemResponse
#'
#' @description
#' GuideItemResponse Class
#'
#' @docType class
#' @title GuideItemResponse
#' @description GuideItemResponse Class
#' @format An \code{R6Class} generator object
#' @field data  \link{Guide}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GuideItemResponse <- R6::R6Class(
  "GuideItemResponse",
  public = list(
    `data` = NULL,

    #' @description
    #' Initialize a new GuideItemResponse class.
    #'
    #' @param data data
    #' @param ... Other optional arguments.
    initialize = function(`data`, ...) {
      if (!missing(`data`)) {
        stopifnot(R6::is.R6(`data`))
        self$`data` <- `data`
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
    #' @return GuideItemResponse as a base R list.
    #' @examples
    #' # convert array of GuideItemResponse (x) to a data frame
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
    #' Convert GuideItemResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GuideItemResponseObject <- list()
      if (!is.null(self$`data`)) {
        GuideItemResponseObject[["data"]] <-
          self$`data`$toSimpleType()
      }
      return(GuideItemResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GuideItemResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuideItemResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        `data_object` <- Guide$new()
        `data_object`$fromJSON(jsonlite::toJSON(this_object$`data`, auto_unbox = TRUE, digits = NA))
        self$`data` <- `data_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GuideItemResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GuideItemResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuideItemResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- Guide$new()$fromJSON(jsonlite::toJSON(this_object$`data`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to GuideItemResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(R6::is.R6(input_json$`data`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GuideItemResponse: the required field `data` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GuideItemResponse
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
# GuideItemResponse$unlock()
#
## Below is an example to define the print function
# GuideItemResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GuideItemResponse$lock()

