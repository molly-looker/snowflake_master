view: minions {
  sql_table_name: PUBLIC.MINIONS ;;

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."START_DATE" ;;
  }

  dimension: streetaddress {
    type: string
    sql: ${TABLE}."STREETADDRESS" ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
