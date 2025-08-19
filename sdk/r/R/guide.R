#' Create a new Guide
#'
#' @description
#' Guide Class
#'
#' @docType class
#' @title Guide
#' @description Guide Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field packageName  character
#' @field vector  \link{AnyType}
#' @field action  character
#' @field description  character
#' @field tokens  integer
#' @field source  character
#' @field solution  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Guide <- R6::R6Class(
  "Guide",
  public = list(
    `id` = NULL,
    `packageName` = NULL,
    `vector` = NULL,
    `action` = NULL,
    `description` = NULL,
    `tokens` = NULL,
    `source` = NULL,
    `solution` = NULL,

    #' @description
    #' Initialize a new Guide class.
    #'
    #' @param id id
    #' @param packageName packageName
    #' @param vector vector
    #' @param action action
    #' @param description description
    #' @param tokens tokens
    #' @param source source
    #' @param solution solution
    #' @param ... Other optional arguments.
    initialize = function(`id`, `packageName`, `vector`, `action`, `description`, `tokens`, `source`, `solution`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`packageName`)) {
        if (!(is.character(`packageName`) && length(`packageName`) == 1)) {
          stop(paste("Error! Invalid data for `packageName`. Must be a string:", `packageName`))
        }
        self$`packageName` <- `packageName`
      }
      if (!missing(`vector`)) {
        stopifnot(R6::is.R6(`vector`))
        self$`vector` <- `vector`
      }
      if (!missing(`action`)) {
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`tokens`)) {
        if (!(is.numeric(`tokens`) && length(`tokens`) == 1)) {
          stop(paste("Error! Invalid data for `tokens`. Must be an integer:", `tokens`))
        }
        self$`tokens` <- `tokens`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`solution`)) {
        if (!(is.character(`solution`) && length(`solution`) == 1)) {
          stop(paste("Error! Invalid data for `solution`. Must be a string:", `solution`))
        }
        self$`solution` <- `solution`
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
    #' @return Guide as a base R list.
    #' @examples
    #' # convert array of Guide (x) to a data frame
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
    #' Convert Guide to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GuideObject <- list()
      if (!is.null(self$`id`)) {
        GuideObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`packageName`)) {
        GuideObject[["packageName"]] <-
          self$`packageName`
      }
      if (!is.null(self$`vector`)) {
        GuideObject[["vector"]] <-
          self$`vector`$toSimpleType()
      }
      if (!is.null(self$`action`)) {
        GuideObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`description`)) {
        GuideObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`tokens`)) {
        GuideObject[["tokens"]] <-
          self$`tokens`
      }
      if (!is.null(self$`source`)) {
        GuideObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`solution`)) {
        GuideObject[["solution"]] <-
          self$`solution`
      }
      return(GuideObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Guide
    #'
    #' @param input_json the JSON input
    #' @return the instance of Guide
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`packageName`)) {
        self$`packageName` <- this_object$`packageName`
      }
      if (!is.null(this_object$`vector`)) {
        `vector_object` <- AnyType$new()
        `vector_object`$fromJSON(jsonlite::toJSON(this_object$`vector`, auto_unbox = TRUE, digits = NA))
        self$`vector` <- `vector_object`
      }
      if (!is.null(this_object$`action`)) {
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`tokens`)) {
        self$`tokens` <- this_object$`tokens`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`solution`)) {
        self$`solution` <- this_object$`solution`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Guide in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Guide
    #'
    #' @param input_json the JSON input
    #' @return the instance of Guide
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`packageName` <- this_object$`packageName`
      self$`vector` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`vector`, auto_unbox = TRUE, digits = NA))
      self$`action` <- this_object$`action`
      self$`description` <- this_object$`description`
      self$`tokens` <- this_object$`tokens`
      self$`source` <- this_object$`source`
      self$`solution` <- this_object$`solution`
      self
    },

    #' @description
    #' Validate JSON input with respect to Guide and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Guide: the required field `id` is missing."))
      }
      # check the required field `packageName`
      if (!is.null(input_json$`packageName`)) {
        if (!(is.character(input_json$`packageName`) && length(input_json$`packageName`) == 1)) {
          stop(paste("Error! Invalid data for `packageName`. Must be a string:", input_json$`packageName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Guide: the required field `packageName` is missing."))
      }
      # check the required field `vector`
      if (!is.null(input_json$`vector`)) {
        stopifnot(R6::is.R6(input_json$`vector`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Guide: the required field `vector` is missing."))
      }
      # check the required field `action`
      if (!is.null(input_json$`action`)) {
        if (!(is.character(input_json$`action`) && length(input_json$`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", input_json$`action`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Guide: the required field `action` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Guide: the required field `description` is missing."))
      }
      # check the required field `tokens`
      if (!is.null(input_json$`tokens`)) {
        if (!(is.numeric(input_json$`tokens`) && length(input_json$`tokens`) == 1)) {
          stop(paste("Error! Invalid data for `tokens`. Must be an integer:", input_json$`tokens`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Guide: the required field `tokens` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Guide: the required field `source` is missing."))
      }
      # check the required field `solution`
      if (!is.null(input_json$`solution`)) {
        if (!(is.character(input_json$`solution`) && length(input_json$`solution`) == 1)) {
          stop(paste("Error! Invalid data for `solution`. Must be a string:", input_json$`solution`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Guide: the required field `solution` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Guide
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `packageName` is null
      if (is.null(self$`packageName`)) {
        return(FALSE)
      }

      # check if the required `action` is null
      if (is.null(self$`action`)) {
        return(FALSE)
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        return(FALSE)
      }

      # check if the required `tokens` is null
      if (is.null(self$`tokens`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `solution` is null
      if (is.null(self$`solution`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `packageName` is null
      if (is.null(self$`packageName`)) {
        invalid_fields["packageName"] <- "Non-nullable required field `packageName` cannot be null."
      }

      # check if the required `action` is null
      if (is.null(self$`action`)) {
        invalid_fields["action"] <- "Non-nullable required field `action` cannot be null."
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      # check if the required `tokens` is null
      if (is.null(self$`tokens`)) {
        invalid_fields["tokens"] <- "Non-nullable required field `tokens` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `solution` is null
      if (is.null(self$`solution`)) {
        invalid_fields["solution"] <- "Non-nullable required field `solution` cannot be null."
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
# Guide$unlock()
#
## Below is an example to define the print function
# Guide$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Guide$lock()

