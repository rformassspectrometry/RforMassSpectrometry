#' @importFrom utils packageVersion
.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
      paste("\nThis is RforMassSpectrometry version", packageVersion("RforMassSpectrometry"), "\n",
            " Please not that it is a very early stage project.\n",
            " Visit https://RforMassSpectrometry.org to get started.\n"))
}
