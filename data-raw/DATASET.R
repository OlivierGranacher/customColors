# Creating potline color vector data - See getcolors.Rmd Vignette
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
