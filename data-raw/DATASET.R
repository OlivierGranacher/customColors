## Creating potline color vector data - See getcolors.Rmd Vignette ----
colorVectorPotline <- c(brown = "#752D2D", brownRed = "#793E44", greyDark = "#57625F",
                        greyBlue = "#525A6E", red = "#D40A03", greyMedium = "#79818B",
                        beige = "#968E7B", pinkDark = "#C09192", greyLight = "#A5ACBF",
                        greyRed = "#8D7086", purpleLight = "#BFB1CF", pinkLight = "#E8C1C3"
)
# stored in data/ for user access
usethis::use_data(colorVectorPotline,
                  overwrite = T)

# Can also be accessed internally with customColors::colorVectorPotline
# https://coolbutuseless.github.io/2018/12/10/r-packages-internal-and-external-data/


## Creating Color Palettes from potline colors

potlinePalettes <- list(
  grey = customColors::extractColors(
                                     "greyDark",
                                     "greyMedium",
                                     "greyLight"
                                     ),
  redBeigeGrey = customColors::extractColors("red",
                                        "pinkLight",
                                        "beige",
                                        "greyMedium",
                                        "greyDark"
                                        ),
  pinkPurple = customColors::extractColors("pinkDark",
                                           "pinkLight",
                                           "purpleLight",
                                           "greyRed"),
  greyPinkLight = customColors::extractColors("greyLight",
                                             "purpleLight",
                                             "pinkLight")
)
usethis::use_data(potlinePalettes,
                  overwrite = T)


## Creating Trimet Colors ----
##
colorVectorTrimet <- c(white = "#EAF2F7", blue = "#1367AE")

usethis::use_data(colorVectorTrimet, overwrite = T)

## Creating Trimet Palette ----
##
trimetPalette <- list(
  main = customColors::extractColors("white", "blue", colorVector = customColors::colorVectorTrimet)
)
usethis::use_data(trimetPalette, overwrite = T)
