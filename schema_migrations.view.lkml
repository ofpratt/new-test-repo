view: schema_migrations {
  sql_table_name: demo_db.schema_migrations ;;

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: yeeeeow {
    type: string
    sql:  "wooooooooooooooooeaw" ;;
  }

  measure: count {
    type: count
    drill_fields: [filename]
  }
}
