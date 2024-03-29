connection: "thelook"

# include all the views
include: "*.view"
include: "*.dashboard"


datagroup: practice_repo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

#Here is my new deploy!


persist_with: practice_repo_default_datagroup

explore: api_test {
  from: events
  join: users {

    type: left_outer
    sql_on: ${api_test.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: inventory_items {
  group_label: "Inventory BOI"
  description: "Hello"
  sql_always_where: ${cost} > 1 ;;
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: order_mc_items {
  view_name: order_items
  group_label: "Inventory BOI"
  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: orders {

    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  label: "ORDERS!"
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: products {}

explore: schema_migrations {}

explore: user_data {
  join: users {
    type: left_outer
    sql_on: ${user_data.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
#explore: test_derived_table {}

explore: users {}

explore: users_nn {}
