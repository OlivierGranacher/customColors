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
#' @param paletteList name of palette list. Default to customColors::potlinePalettes
#' @param paletteName name of palette in palette list.  Default to 'redBeigeGrey'
#' @param reverse if TRUE reverse he colors
#' @param ... passed on to colorRampPalette.
#'
#' @return function
#' @export
#'
#' @examples interpolatePalette()(10)
#'
interpolatePalette <- function(paletteList = customColors::potlinePalettes,
                               paletteName = "redBeigeGrey",
                               reverse = F,
                               ...) {

    colr <- paletteList[[paletteName]]
    if (reverse) colr <- rev(colr)
    grDevices::colorRampPalette(colr, ...)
}


#' scale_color_potline
#'
#' Create scales for ggplot using potline colors
#'
#' @param palette name of palette in customColors::potlinePalettes
#' @param discrete TRUE default for discrete scale
#' @param reverse TRUE to reverse color order
#' @param ... passed on to discrete_scale or scale_color_gradientn
#'
#' @return scale
#' @export
#'
scale_color_potline <- function(palette = "redBeigeGrey", discrete = T, reverse = F, ...) {
  pal <- interpolatePalette(paletteName = palette, reverse = reverse)
  if (discrete) {ggplot2::discrete_scale(aesthetics = "color",
                                         scale_name = paste0("potline_", palette),
                                         palette = pal,
                                         ...
  )
  } else {
      ggplot2::scale_color_gradientn(colours = pal(256), ...)
    }
}

#' scale_fill_potline
#'
#' Create scales for ggplot using potline colors
#'
#' @param palette name of palette in customColors::potlinePalettes
#' @param discrete TRUE default for discrete scale
#' @param reverse TRUE to reverse color order
#' @param ... passed on to discrete_scale or scale_color_gradientn
#'
#' @return scale
#' @export
#'
scale_fill_potline <- function(palette = "redBeigeGrey", discrete = T, reverse = F, ...) {
  pal <- interpolatePalette(paletteName = palette, reverse = reverse)
  if (discrete) {ggplot2::discrete_scale(aesthetics = "fill",
                                         scale_name = paste0("potline_", palette),
                                         palette = pal,
                                         ...
  )
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}

#' scale_color_trimet
#'
#' Create scales for ggplot using Trimet colors
#'
#' @param palette name of palette in customColors::trimetPalette
#' @param discrete TRUE default for discrete scale
#' @param reverse TRUE to reverse color order
#' @param ... passed on to discrete_scale or scale_color_gradientn
#'
#' @return scale
#' @export
#'
scale_color_trimet <- function(palette = "main", discrete = T, reverse = F, ...) {
  pal <- interpolatePalette(paletteName = palette,
                            reverse = reverse,
                            paletteList = customColors::trimetPalette)
  if (discrete) {ggplot2::discrete_scale(aesthetics = "color",
                                         scale_name = paste0("potline_", palette),
                                         palette = pal,
                                         ...
  )
  } else {
      ggplot2::scale_color_gradientn(colours = pal(256), ...)
    }
}

#' scale_fill_trimet
#'
#' Create scales for ggplot using Trimet colors
#'
#' @param palette name of palette in customColors::trimetPalette
#' @param discrete TRUE default for discrete scale
#' @param reverse TRUE to reverse color order
#' @param ... passed on to discrete_scale or scale_color_gradientn
#'
#' @return scale
#' @export
#'
scale_fill_trimet <- function(palette = "main", discrete = T, reverse = F, ...) {
  pal <- interpolatePalette(paletteName = palette,
                            reverse = reverse,
                            paletteList = customColors::trimetPalette)
  if (discrete) {ggplot2::discrete_scale(aesthetics = "fill",
                                         scale_name = paste0("potline_", palette),
                                         palette = pal,
                                         ...
  )
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}

#' Colors for pot designs for G line
#'
#' @param line : potline default to G line
#' @param alphaG : alpha for graphite blocks
#'
#' @return  named vector of color for pot designs
#'
colorCroquis <- function(line = "G", alphaG = .5) {
  if (line == "G") {
  return( c(
    "AP32" = 'goldenrod3',
    "AP32_GRAPH" = scales::alpha("goldenrod", alphaG),
    "TR3X" = 'indianred3',
    "TR33" = 'dodgerblue3',
    "TR33_GRAPH" = scales::alpha('lightblue', alphaG)
  ) )
  } else {
    return(
      c("AP18" = "goldenrod3",
        "AP19" = "goldenrod2",
        "TR20" = "dodgerblue3"
        )
    )
    }
}


#' colorRangeOneColor
#'
#' Create a range of colors from one color with different levels of lightness
#' 50 is the brightness of the base color
#'
#'
#' @param nColor number of colors
#' @param baseColor Base color
#' @param begin lightness value for start color
#' @param end   lightness value for end color
#' @param rev   if TRUE reverse the colors
#'
#' @return vector of colors in hex format
#' @export
#'
#' @examples
#' shades::swatch(colorRangeOneColor(10))
#'
colorRangeOneColor <- function(nColor = 5, baseColor = extractColors("greyRed"), begin = 0, end = 100, rev = F) {
   col <- shades::lightness(shades = baseColor,
                      values = seq(begin, end, length.out = nColor)

                        )
  if (rev) return(rev(col)) else return(col)
}





