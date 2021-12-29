view: products {
  label: "Products that are productive"
  sql_table_name: demo_db.products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

dimension: women {
  type:  yesno
  sql: ${TABLE}.department = 'Women' ;;
}

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: average_price{
    description: "Its like the price but like the average..."
    type: average
    sql: ${retail_price};;
    value_format_name: usd
  }

  measure: sum_price {
    type: sum
    sql: ${retail_price} ;;
    value_format_name: usd
  }

  measure: median_price {
    type: median
    sql: ${retail_price} ;;
    value_format_name: usd
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
}
