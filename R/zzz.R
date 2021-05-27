#' @importFrom utils packageVersion
.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
      paste("\nVisit https://RforMassSpectrometry.org for detail about the project.\n"))
}
