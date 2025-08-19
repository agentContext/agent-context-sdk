#' Create a new App
#'
#' @description
#' App Class
#'
#' @docType class
#' @title App
#' @description App Class
#' @format An \code{R6Class} generator object
#' @field Id  integer
#' @field AppName  character
#' @field PackageName  character
#' @field Description  character
#' @field Tokdens  integer
#' @field CreateAt  character
#' @field UpdateAt  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
App <- R6::R6Class(
  "App",
  public = list(
    `Id` = NULL,
    `AppName` = NULL,
    `PackageName` = NULL,
    `Description` = NULL,
    `Tokdens` = NULL,
    `CreateAt` = NULL,
    `UpdateAt` = NULL,

    #' @description
    #' Initialize a new App class.
    #'
    #' @param Id Id
    #' @param AppName AppName
    #' @param PackageName PackageName
    #' @param Description Description
    #' @param Tokdens Tokdens
    #' @param CreateAt CreateAt
    #' @param UpdateAt UpdateAt
    #' @param ... Other optional arguments.
    initialize = function(`Id`, `AppName`, `PackageName`, `Description`, `Tokdens`, `CreateAt`, `UpdateAt`, ...) {
      if (!missing(`Id`)) {
        if (!(is.numeric(`Id`) && length(`Id`) == 1)) {
          stop(paste("Error! Invalid data for `Id`. Must be an integer:", `Id`))
        }
        self$`Id` <- `Id`
      }
      if (!missing(`AppName`)) {
        if (!(is.character(`AppName`) && length(`AppName`) == 1)) {
          stop(paste("Error! Invalid data for `AppName`. Must be a string:", `AppName`))
        }
        self$`AppName` <- `AppName`
      }
      if (!missing(`PackageName`)) {
        if (!(is.character(`PackageName`) && length(`PackageName`) == 1)) {
          stop(paste("Error! Invalid data for `PackageName`. Must be a string:", `PackageName`))
        }
        self$`PackageName` <- `PackageName`
      }
      if (!missing(`Description`)) {
        if (!(is.character(`Description`) && length(`Description`) == 1)) {
          stop(paste("Error! Invalid data for `Description`. Must be a string:", `Description`))
        }
        self$`Description` <- `Description`
      }
      if (!missing(`Tokdens`)) {
        if (!(is.numeric(`Tokdens`) && length(`Tokdens`) == 1)) {
          stop(paste("Error! Invalid data for `Tokdens`. Must be an integer:", `Tokdens`))
        }
        self$`Tokdens` <- `Tokdens`
      }
      if (!missing(`CreateAt`)) {
        if (!(is.character(`CreateAt`) && length(`CreateAt`) == 1)) {
          stop(paste("Error! Invalid data for `CreateAt`. Must be a string:", `CreateAt`))
        }
        self$`CreateAt` <- `CreateAt`
      }
      if (!missing(`UpdateAt`)) {
        if (!(is.character(`UpdateAt`) && length(`UpdateAt`) == 1)) {
          stop(paste("Error! Invalid data for `UpdateAt`. Must be a string:", `UpdateAt`))
        }
        self$`UpdateAt` <- `UpdateAt`
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
    #' @return App as a base R list.
    #' @examples
    #' # convert array of App (x) to a data frame
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
    #' Convert App to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AppObject <- list()
      if (!is.null(self$`Id`)) {
        AppObject[["Id"]] <-
          self$`Id`
      }
      if (!is.null(self$`AppName`)) {
        AppObject[["AppName"]] <-
          self$`AppName`
      }
      if (!is.null(self$`PackageName`)) {
        AppObject[["PackageName"]] <-
          self$`PackageName`
      }
      if (!is.null(self$`Description`)) {
        AppObject[["Description"]] <-
          self$`Description`
      }
      if (!is.null(self$`Tokdens`)) {
        AppObject[["Tokdens"]] <-
          self$`Tokdens`
      }
      if (!is.null(self$`CreateAt`)) {
        AppObject[["CreateAt"]] <-
          self$`CreateAt`
      }
      if (!is.null(self$`UpdateAt`)) {
        AppObject[["UpdateAt"]] <-
          self$`UpdateAt`
      }
      return(AppObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of App
    #'
    #' @param input_json the JSON input
    #' @return the instance of App
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Id`)) {
        self$`Id` <- this_object$`Id`
      }
      if (!is.null(this_object$`AppName`)) {
        self$`AppName` <- this_object$`AppName`
      }
      if (!is.null(this_object$`PackageName`)) {
        self$`PackageName` <- this_object$`PackageName`
      }
      if (!is.null(this_object$`Description`)) {
        self$`Description` <- this_object$`Description`
      }
      if (!is.null(this_object$`Tokdens`)) {
        self$`Tokdens` <- this_object$`Tokdens`
      }
      if (!is.null(this_object$`CreateAt`)) {
        self$`CreateAt` <- this_object$`CreateAt`
      }
      if (!is.null(this_object$`UpdateAt`)) {
        self$`UpdateAt` <- this_object$`UpdateAt`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return App in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of App
    #'
    #' @param input_json the JSON input
    #' @return the instance of App
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Id` <- this_object$`Id`
      self$`AppName` <- this_object$`AppName`
      self$`PackageName` <- this_object$`PackageName`
      self$`Description` <- this_object$`Description`
      self$`Tokdens` <- this_object$`Tokdens`
      self$`CreateAt` <- this_object$`CreateAt`
      self$`UpdateAt` <- this_object$`UpdateAt`
      self
    },

    #' @description
    #' Validate JSON input with respect to App and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `Id`
      if (!is.null(input_json$`Id`)) {
        if (!(is.numeric(input_json$`Id`) && length(input_json$`Id`) == 1)) {
          stop(paste("Error! Invalid data for `Id`. Must be an integer:", input_json$`Id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for App: the required field `Id` is missing."))
      }
      # check the required field `AppName`
      if (!is.null(input_json$`AppName`)) {
        if (!(is.character(input_json$`AppName`) && length(input_json$`AppName`) == 1)) {
          stop(paste("Error! Invalid data for `AppName`. Must be a string:", input_json$`AppName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for App: the required field `AppName` is missing."))
      }
      # check the required field `PackageName`
      if (!is.null(input_json$`PackageName`)) {
        if (!(is.character(input_json$`PackageName`) && length(input_json$`PackageName`) == 1)) {
          stop(paste("Error! Invalid data for `PackageName`. Must be a string:", input_json$`PackageName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for App: the required field `PackageName` is missing."))
      }
      # check the required field `Description`
      if (!is.null(input_json$`Description`)) {
        if (!(is.character(input_json$`Description`) && length(input_json$`Description`) == 1)) {
          stop(paste("Error! Invalid data for `Description`. Must be a string:", input_json$`Description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for App: the required field `Description` is missing."))
      }
      # check the required field `Tokdens`
      if (!is.null(input_json$`Tokdens`)) {
        if (!(is.numeric(input_json$`Tokdens`) && length(input_json$`Tokdens`) == 1)) {
          stop(paste("Error! Invalid data for `Tokdens`. Must be an integer:", input_json$`Tokdens`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for App: the required field `Tokdens` is missing."))
      }
      # check the required field `CreateAt`
      if (!is.null(input_json$`CreateAt`)) {
        if (!(is.character(input_json$`CreateAt`) && length(input_json$`CreateAt`) == 1)) {
          stop(paste("Error! Invalid data for `CreateAt`. Must be a string:", input_json$`CreateAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for App: the required field `CreateAt` is missing."))
      }
      # check the required field `UpdateAt`
      if (!is.null(input_json$`UpdateAt`)) {
        if (!(is.character(input_json$`UpdateAt`) && length(input_json$`UpdateAt`) == 1)) {
          stop(paste("Error! Invalid data for `UpdateAt`. Must be a string:", input_json$`UpdateAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for App: the required field `UpdateAt` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of App
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `Id` is null
      if (is.null(self$`Id`)) {
        return(FALSE)
      }

      # check if the required `AppName` is null
      if (is.null(self$`AppName`)) {
        return(FALSE)
      }

      # check if the required `PackageName` is null
      if (is.null(self$`PackageName`)) {
        return(FALSE)
      }

      # check if the required `Description` is null
      if (is.null(self$`Description`)) {
        return(FALSE)
      }

      # check if the required `Tokdens` is null
      if (is.null(self$`Tokdens`)) {
        return(FALSE)
      }

      # check if the required `CreateAt` is null
      if (is.null(self$`CreateAt`)) {
        return(FALSE)
      }

      # check if the required `UpdateAt` is null
      if (is.null(self$`UpdateAt`)) {
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
      # check if the required `Id` is null
      if (is.null(self$`Id`)) {
        invalid_fields["Id"] <- "Non-nullable required field `Id` cannot be null."
      }

      # check if the required `AppName` is null
      if (is.null(self$`AppName`)) {
        invalid_fields["AppName"] <- "Non-nullable required field `AppName` cannot be null."
      }

      # check if the required `PackageName` is null
      if (is.null(self$`PackageName`)) {
        invalid_fields["PackageName"] <- "Non-nullable required field `PackageName` cannot be null."
      }

      # check if the required `Description` is null
      if (is.null(self$`Description`)) {
        invalid_fields["Description"] <- "Non-nullable required field `Description` cannot be null."
      }

      # check if the required `Tokdens` is null
      if (is.null(self$`Tokdens`)) {
        invalid_fields["Tokdens"] <- "Non-nullable required field `Tokdens` cannot be null."
      }

      # check if the required `CreateAt` is null
      if (is.null(self$`CreateAt`)) {
        invalid_fields["CreateAt"] <- "Non-nullable required field `CreateAt` cannot be null."
      }

      # check if the required `UpdateAt` is null
      if (is.null(self$`UpdateAt`)) {
        invalid_fields["UpdateAt"] <- "Non-nullable required field `UpdateAt` cannot be null."
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
# App$unlock()
#
## Below is an example to define the print function
# App$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# App$lock()

