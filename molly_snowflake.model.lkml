connection: "snowflake_molly"

# include all the views
include: "*.view"

datagroup: molly_snowflake_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: molly_snowflake_default_datagroup


explore: minions {
  hidden: yes
}
