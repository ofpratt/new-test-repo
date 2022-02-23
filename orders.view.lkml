view: orders {
  sql_table_name: demo_db.orders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: merge_conflicty {
    type: string
    sql: "Oh no!" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }


  filter: test {
    type: date
    sql: {% date_start test %} <= ${created_date} and
         {% date_end test %} > ${created_date} or
        date_sub({% date_start test %}, interval 1 year) <= ${created_date} and
         date_sub({% date_end test %}, interval 1 year) > ${created_date}  ;;
  }

  dimension: yoy_analysis{
    type: yesno
    sql: {% date_start test %} <= ${created_date} and
         {% date_end test %} > ${created_date} or
        date_sub({% date_start test %}, interval 1 year) <= ${created_date} and
         date_sub({% date_end test %}, interval 1 year) > ${created_date}
        ;;
  }

#   dimension: yoy_analysis_pt2{
#     type: yesno
#     sql: date_sub({% date_start test %}, interval 1 year) <= ${created_date} and
#          date_sub({% date_end test %}, interval 1 year) >= ${created_date}
#         ;;
#   }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

measure: newest_order{
  type: string
  sql:  max(${created_date})
  ;;
}

# measure: test {
#   type: max
#   filters: {
#     field: count
#     value: "!= 1"
#   }
#   sql: ${created_date} ;;
# }

  measure: count {
    type: count
    drill_fields: [id, users.first_name, users.last_name, users.id, order_items.count]
  }
}
