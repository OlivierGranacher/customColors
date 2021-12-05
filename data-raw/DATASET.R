# Creating potline color vector data - See getcolors.Rmd Vignette
colorVectorPotline <- c(brown = "#752D2D", brownRed = "#D40A03", greyDark = "#968E7B",
                        greyBlue = "#57625F", red = "#79818B", greyMedium = "#525A6E",
                        beige = "#A5ACBF", pinkDark = "#BFB1CF", greyLight = "#8D7086",
                        greyRed = "#793E44", purpleLight = "#E8C1C3", pinkLight = "#C09192"
)
usethis::use_data(colorVectorPotline,
                  overwrite = T)
