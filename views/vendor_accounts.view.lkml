view: vendor_accounts {
  sql_table_name: dbo.tblDimVendorAccts ;;
  fields_hidden_by_default: yes

  dimension: vendor_accts_dim_id {
    hidden: no
    type: number
    sql: ${TABLE}.VendorAcctsDimID ;;
    primary_key: yes
  }
  dimension: account_group {
    hidden: no
    label: "Account Group"
    type: string
    sql: ${TABLE}.AccountGroup COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: address1 {
    type: string
    sql: ${TABLE}.Address1 ;;
  }
  dimension: address2 {
    type: string
    sql: ${TABLE}.Address2 ;;
  }
  dimension: alloc_detail_level {
    type: number
    sql: ${TABLE}.AllocDetailLevel ;;
  }
  dimension: billing_acct {
    hidden: no
    type: number
    sql: ${TABLE}.BillingAcct ;;
  }
  dimension: billing_acct_start_day {
    type: number
    sql: ${TABLE}.BillingAcctStartDay ;;
  }
  dimension: billing_days_per_month {
    hidden: no
    label: "Days Per Period for Partial Month Billing"
    type: number
    sql: ${TABLE}.BillingDaysPerMonth ;;
  }
  dimension: billing_freq {
    hidden: no
    label: "Billing Cycle"
    type: number
    sql: ${TABLE}.BillingFreq ;;
  }
  dimension: budget_adj_fac {
    hidden: no
    label: "Budget Adjustment Factor"
    type: number
    sql: ${TABLE}.BudgetAdjFac ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }
  dimension_group: close_date {
    hidden: no
    label: "Close Date"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CloseDate ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }
  dimension: country_id {
    hidden: no
    type: number
    sql: ${TABLE}.CountryID ;;
  }
  dimension: credit_amt {
    hidden: no
    label: "Credit Amount"
    type: number
    sql: ${TABLE}.CreditAmt ;;
  }
  dimension: credit_desc {
    hidden: no
    label: "Credit Description"
    type: string
    sql: ${TABLE}.CreditDesc COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension_group: current_cycle_end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CurrentCycleEndDate ;;
  }
  dimension: current_cycle_end_year_period {
    type: string
    sql: ${TABLE}.CurrentCycleEndYearPeriod ;;
  }
  dimension: current_cycle_start_year_period {
    type: string
    sql: ${TABLE}.CurrentCycleStartYearPeriod ;;
  }
  dimension: def_accrue {
    type: number
    sql: ${TABLE}.DefAccrue ;;
  }
  dimension: def_appv_by {
    type: string
    sql: ${TABLE}.DefAppvBy ;;
  }
  dimension: def_ccno {
    type: string
    sql: ${TABLE}.DefCCNo ;;
  }
  dimension: def_glaccount {
    type: string
    sql: ${TABLE}.DefGLAccount ;;
  }
  dimension: def_glaccount_id {
    type: number
    sql: ${TABLE}.DefGLAccountID ;;
  }
  dimension: def_payment_method {
    type: string
    sql: ${TABLE}.DefPaymentMethod ;;
  }
  dimension: def_rcvd_by {
    type: string
    sql: ${TABLE}.DefRcvdBy ;;
  }
  dimension: def_submit_for_payment_by {
    type: string
    sql: ${TABLE}.DefSubmitForPaymentBy ;;
  }
  dimension: def_terms {
    type: string
    sql: ${TABLE}.DefTerms ;;
  }
  dimension: description {
    hidden: no
    type: string
    sql: ${TABLE}.Description COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: billing_account_description {
    label: "Billing Account Description"
    type: string
    sql: ${TABLE}.Description COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }
  dimension: do_not_reconcile {
    type: number
    sql: ${TABLE}.DoNotReconcile ;;
  }
  dimension: do_not_upload {
    type: number
    sql: ${TABLE}.DoNotUpload ;;
  }
  dimension: exclude_from_vpcauto_mappings {
    type: number
    sql: ${TABLE}.ExcludeFromVPCAutoMappings ;;
  }
  dimension: export_acct_num {
    type: string
    sql: ${TABLE}.ExportAcctNum ;;
  }
  dimension: import_acct_num {
    type: string
    sql: ${TABLE}.ImportAcctNum ;;
  }
  dimension: initial_term {
    type: number
    sql: ${TABLE}.InitialTerm ;;
  }
  dimension: internal_vendor_num {
    hidden: no
    label: "Internal Vendor Number"
    type: string
    sql: ${TABLE}.InternalVendorNum COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: inventory_push_acct_num {
    type: string
    sql: ${TABLE}.InventoryPushAcctNum ;;
  }
  dimension_group: last_invoice_date {
    hidden: no
    label: "Last Invoice Date"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LastInvDate ;;
  }
  dimension: loaded {
    type: string
    sql: ${TABLE}.Loaded ;;
  }
  dimension: loaded_by {
    type: string
    sql: ${TABLE}.LoadedBy ;;
  }
  dimension_group: next_cycle_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.NextCycleStartDate ;;
  }
  dimension_group: next_invoice_date {
    hidden: no
    label: "Next Invoice Date"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.NextInvDate ;;
  }
  dimension: notification_lead_time {
    type: number
    sql: ${TABLE}.NotificationLeadTime ;;
  }
  dimension: overdue_days {
    hidden:  no
    label: "Days Overdue"
    type: number
    sql: ${TABLE}.OverdueDays ;;
  }
  dimension: owner {
    hidden: no
    label: "Owner"
    type: string
    sql: ${TABLE}.Owner COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: piacct_move_from_contract_id {
    type: string
    sql: ${TABLE}.PIAcctMoveFromContractID ;;
  }
  dimension: piacct_move_from_contract_vendor {
    type: string
    sql: ${TABLE}.PIAcctMoveFromContractVendor ;;
  }
  dimension: piacct_move_from_mdsid {
    type: string
    sql: ${TABLE}.PIAcctMoveFromMDSID ;;
  }
  dimension: piacct_move_from_svc_vendor {
    type: string
    sql: ${TABLE}.PIAcctMoveFromSvcVendor ;;
  }
  dimension: piacct_move_into_contract_id {
    type: string
    sql: ${TABLE}.PIAcctMoveIntoContractID ;;
  }
  dimension: piacct_move_into_contract_vendor {
    type: string
    sql: ${TABLE}.PIAcctMoveIntoContractVendor ;;
  }
  dimension: piacct_move_into_mdsid {
    type: string
    sql: ${TABLE}.PIAcctMoveIntoMDSID ;;
  }
  dimension: piacct_move_into_svc_vendor {
    type: string
    sql: ${TABLE}.PIAcctMoveIntoSvcVendor ;;
  }
  dimension: piacct_swap_contract_id {
    type: string
    sql: ${TABLE}.PIAcctSwapContractID ;;
  }
  dimension: piacct_swap_contract_vendor {
    type: string
    sql: ${TABLE}.PIAcctSwapContractVendor ;;
  }
  dimension: piacct_swap_mdsid {
    type: string
    sql: ${TABLE}.PIAcctSwapMDSID ;;
  }
  dimension: piacct_swap_svc_vendor {
    type: string
    sql: ${TABLE}.PIAcctSwapSvcVendor ;;
  }
  dimension: piadd_contract_id {
    type: string
    sql: ${TABLE}.PIAddContractID ;;
  }
  dimension: piadd_contract_vendor {
    type: string
    sql: ${TABLE}.PIAddContractVendor ;;
  }
  dimension: piadd_mdsid {
    type: string
    sql: ${TABLE}.PIAddMDSID ;;
  }
  dimension: piadd_svc_vendor {
    type: string
    sql: ${TABLE}.PIAddSvcVendor ;;
  }
  dimension: picancel_contract_id {
    type: string
    sql: ${TABLE}.PICancelContractID ;;
  }
  dimension: picancel_contract_vendor {
    type: string
    sql: ${TABLE}.PICancelContractVendor ;;
  }
  dimension: picancel_mdsid {
    type: string
    sql: ${TABLE}.PICancelMDSID ;;
  }
  dimension: picancel_svc_vendor {
    type: string
    sql: ${TABLE}.PICancelSvcVendor ;;
  }
  dimension: platform_acct {
    hidden: no
    type: number
    sql: ${TABLE}.PlatformAcct ;;
  }
  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }
  dimension: project_code_requirement {
    type: number
    sql: ${TABLE}.ProjectCodeRequirement ;;
  }
  dimension: purge_project_code_alloc {
    type: number
    sql: ${TABLE}.PurgeProjectCodeAlloc ;;
  }
  dimension: remit_to_code {
    hidden: no
    label: "Remit To"
    type: string
    sql: ${TABLE}.RemitToCode COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }
  dimension: renewal_term {
    type: number
    sql: ${TABLE}.RenewalTerm ;;
  }
  dimension: reporting_cycle_frequency {
    hidden: no
    label: "Reporting Cycle"
    type: number
    sql: ${TABLE}.ReportingCycleFrequency ;;
  }
  dimension: reporting_cycle_start_period {
    type: string
    sql: ${TABLE}.ReportingCycleStartPeriod ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }
  dimension: tax_desc1 {
    type: string
    sql: ${TABLE}.TaxDesc1 ;;
  }
  dimension: tax_desc2 {
    type: string
    sql: ${TABLE}.TaxDesc2 ;;
  }
  dimension: tax_name1 {
    type: string
    sql: ${TABLE}.TaxName1 ;;
  }
  dimension: tax_name2 {
    type: string
    sql: ${TABLE}.TaxName2 ;;
  }
  dimension: tax_rate1 {
    type: number
    sql: ${TABLE}.TaxRate1 ;;
  }
  dimension: tax_rate2 {
    type: number
    sql: ${TABLE}.TaxRate2 ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }
  dimension: vendor_acct_id {
    hidden: no
    type: number
    sql: ${TABLE}.VendorAcctID ;;
  }
  dimension: vendor_acct_num {
    hidden: no
    type: string
    sql: ${TABLE}.VendorAcctNum COLLATE SQL_Latin1_General_CP1_CI_AI;;

  }

  dimension: vendor_id {
    hidden: no
    type: number
    sql: ${TABLE}.VendorID ;;
  }
  dimension: x_end_comment {
    type: string
    sql: ${TABLE}.xEndComment ;;
  }
  dimension: x_push_header {
    type: string
    sql: ${TABLE}.xPushHeader ;;
  }
  dimension: x_push_path {
    type: string
    sql: ${TABLE}.xPushPath ;;
  }
  dimension: x_push_trailer {
    type: string
    sql: ${TABLE}.xPushTrailer ;;
  }
  dimension: x_push_type {
    type: number
    sql: ${TABLE}.xPushType ;;
  }
  dimension: x_start_comment {
    type: string
    sql: ${TABLE}.xStartComment ;;
  }

  # Measures
  measure: count {
    type: count
  }
}
