#' Create a new GuideSearchResponse
#'
#' @description
#' GuideSearchResponse Class
#'
#' @docType class
#' @title GuideSearchResponse
#' @description GuideSearchResponse Class
#' @format An \code{R6Class} generator object
#' @field data  list(\link{Guide})
#' @field paging  \link{Paging}
#' @field score 与 data 同顺序的相似度分数 list(numeric)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GuideSearchResponse <- R6::R6Class(
  "GuideSearchResponse",
  public = list(
    `data` = NULL,
    `paging` = NULL,
    `score` = NULL,

    #' @description
    #' Initialize a new GuideSearchResponse class.
    #'
    #' @param data data
    #' @param paging paging
    #' @param score 与 data 同顺序的相似度分数
    #' @param ... Other optional arguments.
    initialize = function(`data`, `paging`, `score`, ...) {
      if (!missing(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
      if (!missing(`paging`)) {
        stopifnot(R6::is.R6(`paging`))
        self$`paging` <- `paging`
      }
      if (!missing(`score`)) {
        stopifnot(is.vector(`score`), length(`score`) != 0)
        sapply(`score`, function(x) stopifnot(is.character(x)))
        self$`score` <- `score`
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
    #' @return GuideSearchResponse as a base R list.
    #' @examples
    #' # convert array of GuideSearchResponse (x) to a data frame
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
    #' Convert GuideSearchResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GuideSearchResponseObject <- list()
      if (!is.null(self$`data`)) {
        GuideSearchResponseObject[["data"]] <-
          lapply(self$`data`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`paging`)) {
        GuideSearchResponseObject[["paging"]] <-
          self$`paging`$toSimpleType()
      }
      if (!is.null(self$`score`)) {
        GuideSearchResponseObject[["score"]] <-
          self$`score`
      }
      return(GuideSearchResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GuideSearchResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuideSearchResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[Guide]", loadNamespace("agent-context-sdk"))
      }
      if (!is.null(this_object$`paging`)) {
        `paging_object` <- Paging$new()
        `paging_object`$fromJSON(jsonlite::toJSON(this_object$`paging`, auto_unbox = TRUE, digits = NA))
        self$`paging` <- `paging_object`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- ApiClient$new()$deserializeObj(this_object$`score`, "array[numeric]", loadNamespace("agent-context-sdk"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GuideSearchResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GuideSearchResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuideSearchResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[Guide]", loadNamespace("agent-context-sdk"))
      self$`paging` <- Paging$new()$fromJSON(jsonlite::toJSON(this_object$`paging`, auto_unbox = TRUE, digits = NA))
      self$`score` <- ApiClient$new()$deserializeObj(this_object$`score`, "array[numeric]", loadNamespace("agent-context-sdk"))
      self
    },

    #' @description
    #' Validate JSON input with respect to GuideSearchResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(is.vector(input_json$`data`), length(input_json$`data`) != 0)
        tmp <- sapply(input_json$`data`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GuideSearchResponse: the required field `data` is missing."))
      }
      # check the required field `paging`
      if (!is.null(input_json$`paging`)) {
        stopifnot(R6::is.R6(input_json$`paging`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GuideSearchResponse: the required field `paging` is missing."))
      }
      # check the required field `score`
      if (!is.null(input_json$`score`)) {
        stopifnot(is.vector(input_json$`score`), length(input_json$`score`) != 0)
        tmp <- sapply(input_json$`score`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GuideSearchResponse: the required field `score` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GuideSearchResponse
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

      # check if the required `score` is null
      if (is.null(self$`score`)) {
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

      # check if the required `score` is null
      if (is.null(self$`score`)) {
        invalid_fields["score"] <- "Non-nullable required field `score` cannot be null."
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
# GuideSearchResponse$unlock()
#
## Below is an example to define the print function
# GuideSearchResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GuideSearchResponse$lock()

