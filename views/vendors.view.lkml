view: vendors {
  sql_table_name: dbo.tblDimVendors ;;
  label: "Vendors"

  dimension: ddqaction_date {
    type: string
    sql: ${TABLE}.DDQActionDate ;;
  }
  dimension: ddqfrequency {
    type: number
    sql: ${TABLE}.DDQFrequency ;;
  }
  dimension: ddqowner {
    type: string
    sql: ${TABLE}.DDQOwner ;;
  }
  dimension: ext_contract_sys_vendor_name {
    type: string
    sql: ${TABLE}.ExtContractSysVendorName ;;
  }
  dimension: last_ddqdate {
    type: string
    sql: ${TABLE}.LastDDQDate ;;
  }
  dimension: loaded {
    type: string
    sql: ${TABLE}.Loaded ;;
  }
  dimension: loaded_by {
    type: string
    sql: ${TABLE}.LoadedBy ;;
  }
  dimension: notification_lead_time {
    type: number
    sql: ${TABLE}.NotificationLeadTime ;;
  }
  dimension: parent_vendor_id {
    type: number
    sql: ${TABLE}.ParentVendorID ;;
  }
  dimension: parent_vendor_name {
    type: string
    sql: ${TABLE}.ParentVendorName ;;
  }
  dimension: vendor_id {
    type: number
    sql: ${TABLE}.VendorID ;;
  }
  dimension: vendor_name {
    type: string
    sql: ${TABLE}.VendorName ;;
  }
  dimension: vendor_type {
    type: string
    sql: ${TABLE}.VendorType ;;
  }
  dimension: vendors_dim_id {
    type: number
    sql: ${TABLE}.VendorsDimID ;;
  }
  measure: count {
    type: count
    drill_fields: [vendor_name, parent_vendor_name, ext_contract_sys_vendor_name]
  }
}
