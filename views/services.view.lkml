view: services {
  sql_table_name: dbo.tblDimServices ;;
  label: "Services"
  fields_hidden_by_default: yes

  dimension: svcs_dim_id {
    primary_key: yes
    hidden: no
    type: number
    sql: ${TABLE}.SvcsDimID ;;
  }
  dimension: svc_id {
    type: number
    sql: ${TABLE}.SvcID ;;
  }
  dimension: data_category {
    hidden: no
    label: "Service Category"
    type: string
    sql: ${TABLE}.DataCategory COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: delete_if_not_in_use {
    hidden: no
    type: number
    sql: ${TABLE}.DeleteIfNotInUse ;;
  }
  dimension: discount_for_dups {
    hidden: no
    label: "Duplicates Discounted"
    type: number
    sql: ${TABLE}.DiscountForDups ;;
  }
  dimension: do_not_report {
    hidden: no
    label: "Do Not Report"
    type: number
    sql: ${TABLE}.DoNotReport ;;
  }
  dimension: expense_category {
    hidden: no
    label: "Service Expense Type"
    type: string
    sql: ${TABLE}.ExpenseCategory COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: expense_info10_use {
    hidden: no
    label: "Expense Info 10 Use"
    type: string
    sql: ${TABLE}.ExpenseInfo10_Use COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: expense_info1_use {
    hidden: no
    label: "Expense Info 1 Use"
    type: string
    sql: ${TABLE}.ExpenseInfo1_Use COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: expense_info2_use {
    hidden: no
    label: "Expense Info 2 Use"
    type: string
    sql: ${TABLE}.ExpenseInfo2_Use COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: expense_info3_use {
    hidden: no
    label: "Expense Info 3 Use"
    type: string
    sql: ${TABLE}.ExpenseInfo3_Use COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: expense_info4_use {
    hidden: no
    label: "Expense Info 4 Use"
    type: string
    sql: ${TABLE}.ExpenseInfo4_Use COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: expense_info5_use {
    hidden: no
    label: "Expense Info 5 Use"
    type: string
    sql: ${TABLE}.ExpenseInfo5_Use COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: expense_info6_use {
    hidden: no
    label: "Expense Info 6 Use"
    type: string
    sql: ${TABLE}.ExpenseInfo6_Use COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: expense_info7_use {
    hidden: no
    label: "Expense Info 7 Use"
    type: string
    sql: ${TABLE}.ExpenseInfo7_Use COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: expense_info8_use {
    hidden: no
    label: "Expense Info 8 Use"
    type: string
    sql: ${TABLE}.ExpenseInfo8_Use COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: expense_info9_use {
    hidden: no
    label: "Expense Info 9 Use"
    type: string
    sql: ${TABLE}.ExpenseInfo9_Use COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: invoice_name {
    hidden: no
    label: "Invoice Name"
    type: string
    sql: ${TABLE}.InvoiceName COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: loaded {
    type: string
    sql: ${TABLE}.Loaded ;;
  }
  dimension: loaded_by {
    type: string
    sql: ${TABLE}.LoadedBy ;;
  }
  dimension: mdsfull_description {
    hidden: no
    label: "Full Description"
    type: string
    sql: ${TABLE}.MDSFullDescription COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: mdsid {
    hidden: no
    label: "Internal Service ID"
    type: string
    sql: ${TABLE}.MDSID COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: mdsnotes {
    hidden: no
    label: "Service Notes"
    type: string
    sql: ${TABLE}.MDSNOTES COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: mdsservice {
    hidden: no
    label: "Service Name"
    type: string
    sql: ${TABLE}.MDSSERVICE COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: rollup {
    hidden: no
    label: "Rollup"
    type: number
    sql: ${TABLE}.Rollup ;;
  }
  dimension: soft_eligible {
    hidden: no
    label: "Soft Eligible"
    type: number
    sql: ${TABLE}.SoftEligible ;;
  }

  dimension: vendor_id {
    hidden: no
    label: "VendorID"
    type: number
    sql: ${TABLE}.VendorID ;;
  }

  # Measures
  measure: count {
    type: count
    drill_fields: [invoice_name]
  }
}
