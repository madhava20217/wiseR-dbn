wiser <- function()
{
  appDir <- system.file("bn", package = "wiseR")
  shiny::runApp(appDir = appDir, launch.browser = TRUE)
}
