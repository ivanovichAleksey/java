<?php


add_action("mesmerize_header_background_overlay_settings", function ($section, $prefix, $group, $inner, $priority) {
    $header_class = $inner ? ".header" : ".header-homepage";

    mesmerize_add_kirki_field(array(
        'type'    => 'select',
        'label'   => esc_html__('Overlay Shapes', 'mesmerize'),
        'section' => $section,

        'settings' => $prefix . '_overlay_shape',
        'default'  => $inner ? "circles" : "none",
        'priority' => $priority,
        'choices'  => mesmerize_get_header_shapes_overlay(),


        'active_callback' => array(
            array(
                'setting'  => $prefix . '_show_overlay',
                'operator' => '==',
                'value'    => true,
            ),
        ),
        'group'           => $group,
    ));

    mesmerize_add_kirki_field(array(
        'type'      => 'slider',
        'label'     => esc_html__('Shape Light', 'mesmerize'),
        'section'   => $section,
        'priority'  => $priority,
        'settings'  => $prefix . '_overlay_shape_light',
        'default'   => 0,
        'transport' => 'postMessage',
        'choices'   => array(
            'min'  => '0',
            'max'  => '100',
            'step' => '1',
        ),

        "output" => array(
            array(
                'element'       => $header_class . '.color-overlay:after',
                'property'      => 'filter',
                'value_pattern' => 'invert($%) ',
            ),
        ),

        'js_vars'         => array(
            array(
                'element'       => $header_class . '.color-overlay:after',
                'function'      => 'css',
                'property'      => 'filter',
                'value_pattern' => 'invert($%) ',
            ),
        ),
        'active_callback' => array(
            array(
                'setting'  => $prefix . '_overlay_shape',
                'operator' => '!=',
                'value'    => 'none',
            ),
        ),
        'group'           => $group,
    ));

}, 1, 5);


function mesmerize_get_header_shape_overlay_value($shape, $shapes = false)
{
    if ( ! $shapes) {
        $shapes = mesmerize_get_header_shapes();
    }

    $shapeObj = $shapes[$shape];
    $isTile   = $shapeObj['tile'];

    $url = esc_url(get_template_directory_uri() . "/assets/images/header-shapes/{$shape}.png");

    $value = "url({$url})";

    if ($isTile) {
        $value .= " top left repeat";
    } else {
        $value .= " center center/ cover no-repeat";
    }

    return $value;
}


add_action('wp_head', 'mesmerize_print_header_shape', PHP_INT_MAX);
function mesmerize_print_header_shape()
{
    $inner        = !mesmerize_is_front_page();
    $header_class = $inner ? ".header" : ".header-homepage";
    $prefix       = $inner ? "inner_header" : "header";
    $theme_mod    = $prefix . '_overlay_shape';

    $type = get_theme_mod($theme_mod, $inner ? "circles" : "none");

    if ($type != "none") {
        $selector = $header_class . '.color-overlay:after';
        $value    = mesmerize_get_header_shape_overlay_value($type);
        ?>
        <style data-name="header-shapes">
            <?php echo esc_html($selector)." {background:$value}"; ?>
        </style>
        <?php
    }
}


function mesmerize_get_header_shapes()
{
    $shapes = apply_filters("mesmerize_get_header_shapes_overlay_filter", array(
        'none'    => array(
            'label' => esc_html__('None', 'mesmerize'),
            'tile'  => false,
        ),
        'circles' => array(
            'label' => esc_html__('Circles', 'mesmerize'),
            'tile'  => false,
        ),
    ));

    return $shapes;
}


function mesmerize_get_header_shapes_overlay($asControlOptions = true)
{

    $shapes = mesmerize_get_header_shapes();


    foreach ($shapes as $shape => $data) {
        $label  = $data['label'];
        $isTile = $data['tile'];

        if ($shape === 'none') {
            $url = '#';
        } else {
            $url = get_template_directory_uri() . "/assets/images/header-shapes/{$shape}.png";
        }
        if ($asControlOptions) {
            $result[$shape] = $label;
        } else {
            $result[$shape] = array(
                'url'   => $url,
                'label' => $label,
                'tile'  => $isTile,
            );
        }

    }

    return $result;

}
