#' @importFrom utils packageVersion
.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
      paste("\nThis is RforMassSpectrometry version", packageVersion("RforMassSpectrometry"), "\n",
            " Visit https://RforMassSpectrometry.org to get started.\n"))
}
