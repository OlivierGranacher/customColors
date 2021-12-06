# Creating potline color vector data - See getcolors.Rmd Vignette
colorVectorPotline <- c(brown = "#752D2D", brownRed = "#D40A03", greyDark = "#968E7B",
                        greyBlue = "#57625F", red = "#79818B", greyMedium = "#525A6E",
                        beige = "#A5ACBF", pinkDark = "#BFB1CF", greyLight = "#8D7086",
                        greyRed = "#793E44", purpleLight = "#E8C1C3", pinkLight = "#C09192"
)
# stored in data/ for user access
usethis::use_data(colorVectorPotline,
                  overwrite = T)

# Can also be accessed internally with customColors::colorVectorPotline
# https://coolbutuseless.github.io/2018/12/10/r-packages-internal-and-external-data/
