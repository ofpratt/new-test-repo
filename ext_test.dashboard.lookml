- dashboard: ext_test
  title: Ext Test
  extends: ext_base
  elements:
   - title: Table
     name: Table
     model: op_fresh_and_free_space
     explore: order_items
     type: looker_grid
     fields: [orders.created_date, products.brand, custom_dimension]
     filters: {}
     sorts: [orders.created_date desc]
     limit: 500
     column_limit: 50
    # dynamic_fields: [{category: dimension, expression: 'concat(${inventory_items.created_date},
    #       ${users.city})', label: custom dimension, value_format: !!null '', value_format_name: !!null '',
    #     dimension: custom_dimension, _kind_hint: dimension, _type_hint: string}, {
    #     category: table_calculation, expression: 'concat(${orders.created_date}, ${products.brand})',
    #     label: Table Calc, value_format: !!null '', value_format_name: !!null '',
    #     _kind_hint: dimension, table_calculation: table_calc, _type_hint: string}]
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
     hidden_fields:
     y_axes: []
     listen:
      Brand: products.brand
      Brand but different: ndt_datatonic_test.brand
     row: 0
     col: 0
     width: 24
     height: 9
