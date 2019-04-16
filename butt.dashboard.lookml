- dashboard: repo_dash
  title: repo dash
  layout: newspaper
  elements:
  - title: pie
    name: pie
    model: practice_repo
    explore: orders
    type: looker_pie
    fields: [users.age_tier, orders.count]
    fill_fields: [users.age_tier]
    sorts: [users.age_tier]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - title: column
    name: column
    model: practice_repo
    explore: products
    type: looker_column
    fields: [products.brand, products.count]
    sorts: [products.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    trellis: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    row: 0
    col: 16
    width: 8
    height: 6
  - title: map
    name: map
    model: practice_repo
    explore: users
    type: looker_map
    fields: [users.state, users.zip, users.id, users.gender]
    sorts: [users.state]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    map_position: custom
    map_latitude: 42.01155019592861
    map_longitude: -92.45544433593751
    map_zoom: 2
    row: 6
    col: 0
    width: 8
    height: 6
  - title: scatterplot
    name: scatterplot
    model: practice_repo
    explore: products
    type: looker_scatter
    fields: [products.brand, products.sum_price]
    sorts: [products.brand]
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    trellis: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    row: 6
    col: 8
    width: 8
    height: 6
  - title: line
    name: line
    model: practice_repo
    explore: products
    type: looker_line
    fields: [products.brand, products.average_price]
    sorts: [products.average_price desc]
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    trellis: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    row: 6
    col: 16
    width: 8
    height: 6
  - title: area
    name: area
    model: practice_repo
    explore: products
    type: looker_area
    fields: [products.brand, products.average_price, products.count]
    sorts: [products.average_price desc]
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    trellis: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    row: 12
    col: 0
    width: 8
    height: 6
  - title: donut
    name: donut
    model: practice_repo
    explore: products
    type: looker_donut_multiples
    fields: [products.category, products.count]
    pivots: [products.category]
    sorts: [products.category]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 12
    col: 8
    width: 8
    height: 6
  - title: funnel
    name: funnel
    model: practice_repo
    explore: products
    type: looker_funnel
    fields: [products.count, products.department]
    sorts: [products.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    series_types: {}
    row: 12
    col: 16
    width: 8
    height: 6
  - title: bar
    name: bar
    model: practice_repo
    explore: inventory_items
    type: looker_bar
    fields: [inventory_items.cost, inventory_items.count]
    sorts: [inventory_items.cost]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 18
    col: 0
    width: 8
    height: 6
  - title: static map
    name: static map
    model: practice_repo
    explore: users
    type: looker_geo_coordinates
    fields: [users.zip, users.email, users.count]
    sorts: [users.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 18
    col: 8
    width: 8
    height: 6
