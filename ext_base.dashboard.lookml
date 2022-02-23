- dashboard: ext_base
  title: ext_base
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Scatterplot
    name: Scatterplot
    model: op_fresh_and_free_space
    explore: order_mc_items
    type: looker_scatter
    fields: [order_items.id, order_items.sale_price]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    y_axes: []
    listen:
      Brand: products.brand
      Brand but different: ndt_datatonic_test.brand
    row: 0
    col: 0
    width: 24
    height: 8
  - title: Table
    name: Table
    model: op_fresh_and_free_space
    explore: order_mc_items
    type: looker_grid
    fields: [orders.created_date, products.brand, custom_dimension]
    filters: {}
    sorts: [orders.created_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, expression: 'concat(${inventory_items.created_date},
          ${users.city})', label: custom dimension, value_format: !!null '', value_format_name: !!null '',
        dimension: custom_dimension, _kind_hint: dimension, _type_hint: string}, {
        category: table_calculation, expression: 'concat(${orders.created_date}, ${products.brand})',
        label: Table Calc, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: table_calc, _type_hint: string}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    #hidden_fields: []
    y_axes: []
    listen:
      Brand: products.brand
      Brand but different: ndt_datatonic_test.brand
    row: 8
    col: 0
    width: 24
    height: 9
