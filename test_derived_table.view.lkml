view: test_derived_table {
  derived_table: {
    sql: SELECT
        users.age  AS `users.age`,
        COUNT(DISTINCT users.id ) AS `users.count`
      FROM demo_db.orders  AS orders
      LEFT JOIN demo_db.users  AS users ON orders.user_id = users.id

      GROUP BY 1
      ORDER BY COUNT(DISTINCT users.id ) DESC
      LIMIT 500
       ;;
     sql_trigger_value: select curdate() ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: users_age {
    type: number
    sql: ${TABLE}.`users.age` ;;
  }

  dimension: users_count {
    type: number
    sql: ${TABLE}.`users.count` ;;
  }

  set: detail {
    fields: [users_age, users_count]
  }
}
