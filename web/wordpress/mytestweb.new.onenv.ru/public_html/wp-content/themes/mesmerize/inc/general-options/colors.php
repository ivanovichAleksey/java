<?php

function mesmerize_get_default_colors()
{
    return array(
        array("label" => esc_html__("Primary", "mesmerize"), "name" => "color1", "value" => "#03a9f4"),
        array("label" => esc_html__("Secondary", "mesmerize"), "name" => "color2", "value" => "#FF9800"),
        array("label" => esc_html__("color3", "mesmerize"), "name" => "color3", "value" => "#fbc02d"),
        array("label" => esc_html__("color4", "mesmerize"), "name" => "color4", "value" => "#8c239f"),
        array("label" => esc_html__("color5", "mesmerize"), "name" => "color5", "value" => "#ff3369"),
        array("label" => esc_html__("color6", "mesmerize"), "name" => "color6", "value" => "#343a40"),
    );
}


function mesmerize_get_theme_colors($color = false)
{
    $colors = apply_filters("mesmerize_get_theme_colors", mesmerize_get_default_colors(), $color);

    if ($color) {
        global $mesmerize_cached_colors;

        if ( ! $mesmerize_cached_colors) {

            $mesmerize_cached_colors = array();

            foreach ($colors as $colorData) {
                $mesmerize_cached_colors[$colorData['name']] = $colorData['value'];
            }
        }

        if (isset($mesmerize_cached_colors[$color])) {
            return $mesmerize_cached_colors[$color];
        } else {
            return esc_html(sprintf(__("color %s not found", "mesmerize"), $color));
        }
    }

    return $colors;
}

add_filter('kirki_color_picker_palettes', 'mesmerize_theme_kirki_palettes');

function mesmerize_theme_kirki_palettes($palettes)
{
    $namedColors = mesmerize_get_theme_colors();

    foreach ($namedColors as $name => $color) {
        if (isset($color['value'])) {
            $palettes[] = $color['value'];
        }
    }

    array_unshift($palettes, '#ffffff');
    array_unshift($palettes, '#000000');

    return array_unique($palettes);
}