#' extractColors
#'
#' EXtract colors from custom color vector by color name
#'
#' @param ... names of colors to return - if NULL returns all colors
#' @param colorVector named color vector
#'
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

#' interpolatePalette
#'
#'  Create a function to generate set of n colors from a color palette.
#'
#' @param paletteList list of named color vectors. Default to customColors::potlinePalettes
#' @param paletteName name of palette in palette list.  Default to 'redGrey'
#' @param reverse if TRUE reverse he colors
#' @param ... passed on to colorRampPalette.
#'
#' @return function
#' @export
#'
#' @examples interpolatePalette()(10)
#'
interpolatePalette <- function(paletteList = customColors::potlinePalettes,
                               paletteName = "redGrey",
                               reverse = F,
                               ...) {

    colr <- paletteList[[paletteName]]
    if (reverse) colr <- rev(colr)
    grDevices::colorRampPalette(colr, ...)
}
