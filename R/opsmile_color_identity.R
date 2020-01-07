# Explanation of colors programming
# https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2

# named vector of colors
# colors for formatting
colors_opsmile <- c(
  yellow = "#fecc5c",
  orange = "#fd8d3c",
  lightred = "#fc4e2a",
  darkred = "#800026",
  lightblue = "#bdd7e7",
  darkblue= "#2171b5"
)

# function to extract OpSmile colors as hex codes
# @param ... Character names of colors_opsmile
get_colors_opsmile <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (colors_opsmile)

  colors_opsmile[cols]
}

# list of color palattes
opsmile_palettes <- list(
  main  = get_colors_opsmile("yellow", "orange", "lightred", "darkred", "lightblue", "darkblue"),

  cool  = get_colors_opsmile("lightblue", "darkblue"),

  hot   = get_colors_opsmile("yellow", "orange", "lightred", "darkred"),

  rainbow = get_colors_opsmile("darkred", "lightred", "orange", "yellow", "lightblue", "darkblue"),

  yesno_dark = get_colors_opsmile("darkblue", "darkred"),

  yesno_light = get_colors_opsmile("lightblue", "lightred")
)

# Return function to interpolate a OpSmile color palette
# @param palette Character name of palette in opsmile_palettes
# @param reverse Boolean indicating whether the palette should be reversed
# @param ... Additional arguments to pass to colorRampPalette() — such as an alpha value
opsmile_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- opsmile_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
