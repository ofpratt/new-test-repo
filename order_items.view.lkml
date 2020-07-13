view: order_items {
  sql_table_name: demo_db.order_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: odd_even {
    type: yesno
    sql: ${price_buckets} = "Hella High" ;;
  }

  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  filter: odd_even_filter {
    type: string
  }

#   measure: count_with_id_number {
#     type: number
#     sql: count(${id}) where ${price_buckets} = {% condition odd_even_filter %} {{ rendered_value }} {% endcondition %} ;;
#   }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: returned {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.returned_at ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  measure: sum_price {
    type: sum
    sql: ${sale_price} ;;
  }

  measure: both_sum {
    type: number
    sql: ${sum_price} + ${inventory_items.sum_cost} ;;
  }

  dimension: price_buckets {
    type: string
    case: {
      when: {
        sql: ${sale_price} >= 0 and ${sale_price} < 20 ;;
        label: "Low"
      }
      when: {
        sql: ${sale_price} >= 20 and ${sale_price} < 50 ;;
        label: "Middle"
      }
      when: {
        sql: ${sale_price} >= 50 and ${sale_price} < 100 ;;
        label: "High"
      }
      else: "Hella High"
    }
  }

  measure: count {
    type: count
    drill_fields: [id, inventory_items.id, orders.id]
  }
}
