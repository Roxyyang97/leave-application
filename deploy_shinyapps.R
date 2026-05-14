required_packages <- c("quarto", "rsconnect")
missing_packages <- required_packages[
  !vapply(required_packages, requireNamespace, logical(1), quietly = TRUE)
]

if (length(missing_packages) > 0) {
  stop(
    paste0(
      "Please install the following package(s) before publishing: ",
      paste(missing_packages, collapse = ", ")
    )
  )
}

library(quarto)

quarto_publish_app(
  server = "shinyapps.io",
  name = "leave-application"
)
