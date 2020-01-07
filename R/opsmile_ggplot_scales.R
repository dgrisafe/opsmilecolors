# Explanation of colors programming
# https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2

# Color scale constructor for OpSmile colors
# @param palette Character name of palette in opsmile_palettes
# @param discrete Boolean indicating whether color aesthetic is discrete or not
# @param reverse Boolean indicating whether the palette should be reversed
# @param ... Additional arguments passed to discrete_scale() or
#            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
scale_color_opsmile <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- opsmile_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("opsmile_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

# Fill scale constructor for OpSmile colors
# @param palette Character name of palette in opsmile_palettes
# @param discrete Boolean indicating whether color aesthetic is discrete or not
# @param reverse Boolean indicating whether the palette should be reversed
# @param ... Additional arguments passed to discrete_scale() or
#            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
scale_fill_opsmile <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- opsmile_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("opsmile_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
