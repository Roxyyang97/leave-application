# leave-application

Quarto + Shiny medical leave form for HR intake.

## Run locally

Install the required packages:

```r
install.packages(c("shiny", "openxlsx", "quarto", "rsconnect"))
```

Open the project in RStudio and use `Run Document` on `index.qmd`, or run:

```r
library(quarto)
quarto_serve("index.qmd")
```

## Publish to shinyapps.io

This project is prepared for `shinyapps.io` deployment as a Quarto interactive document.

Use either:

```r
source("deploy_shinyapps.R")
```

or:

```r
library(quarto)
quarto_publish_app(server = "shinyapps.io")
```

## Important storage limitation

The app currently writes submissions to an Excel workbook on the app's local filesystem.

That works for local development, but on `shinyapps.io` local files are not permanent across redeploys or instance changes. If you need durable HR records, replace Excel-on-local-disk storage with a remote backend such as:

- Google Sheets
- OneDrive or SharePoint
- Dropbox
- SQLite on a server you control
- MySQL or PostgreSQL

Official references:

- Quarto Shiny deployment: https://quarto.org/docs/interactive/shiny/running.html
- Shiny persistent data storage: https://shiny.posit.co/r/articles/build/persistent-data-storage/
