#' extractColors
#'
#' EXtract colors from custom color vector by color name
#'
#' @param colorVector named color vector
#' @param ... names of colors to return - if NULL returns all colors
#'
#' @return named vector of selected colors
#' @export
#'
#' @examples extractColors("red", "brown")
#'
#'
extractColors <- function(..., colorVector = customColors::colorVectorPotline) {
  selection <- c(...)
  if (is.null(selection)) return(colorVector)

  return(colorVector[selection])
}
