<?php

mesmerize_require("/inc/header-options/navigation-options/top-bar/content-areas.php");

add_action("mesmerize_customize_register_options", function () {
    mesmerize_add_options_group(array(
        "mesmerize_top_bar_options" => array(
            // section
            "navigation_top_bar",
        ),
    ));
});

function mesmerize_top_bar_options($section)
{
    mesmerize_add_kirki_field(array(
        'type'     => 'sectionseparator',
        'label'    => esc_html__('Top Bar Display', 'mesmerize'),
        'section'  => $section,
        'settings' => "top_bar_display_separator",
        'priority' => 0,
    ));

    mesmerize_add_kirki_field(array(
        'type'     => 'checkbox',
        'label'    => esc_html__('Show Top Bar', 'mesmerize'),
        'section'  => $section,
        'priority' => 0,
        'settings' => "enable_top_bar",
        'default'  => mesmerize_mod_default('enable_top_bar'),
    ));
}


function mesmerize_print_top_bar_area($areaName, $default = "info")
{

    $to_print = get_theme_mod("header_top_bar_{$areaName}_content", $default);
    
    if (!array_key_exists($to_print, mesmerize_get_content_types())) {
        $to_print = "info";
    }

    if (!in_array($areaName, array('area-left', 'area-right'))) {
        $areaName = "area-left";
    }

    ?>
    <div class="header-top-bar-area <?php echo esc_attr($areaName); ?>">
        <?php
            do_action("mesmerize_header_top_bar_content_print", $areaName, $to_print);
        ?>
    </div>
    <?php
}

function mesmerize_print_header_top_bar()
{
    $inner   = mesmerize_is_inner();
    $enabled = get_theme_mod('enable_top_bar', mesmerize_mod_default('enable_top_bar'));

    $classes = array();
    $prefix  = $inner ? "inner_header" : "header";

    if (get_theme_mod("{$prefix}_nav_boxed", false)) {
        $classes[] = "gridContainer";
    }

    if ($enabled) {
        $header_top_bar_class = '';
        if (in_array('gridContainer', $classes)) {
            $header_top_bar_class = 'no-padding';
        }
        $header_top_bar_class = apply_filters('mesmerize_header_top_bar_class', $header_top_bar_class);
        ?>
        <div class="header-top-bar <?php echo esc_attr($header_top_bar_class); ?>">
            <div class="header-top-bar-inner <?php echo esc_attr(implode(' ', $classes)); ?>">
                <?php mesmerize_print_top_bar_area('area-left', 'info') ?>
                <?php mesmerize_print_top_bar_area('area-right', 'social') ?>
            </div>
        </div>
        <?php
    }

}