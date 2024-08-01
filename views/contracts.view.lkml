view: contracts {
  sql_table_name: dbo.tblDimContracts ;;
  label: "Contracts"
  fields_hidden_by_default: yes

  dimension: contracts_dim_id {
    primary_key: yes
    hidden: no
    label: "ContractsDimID"
    type: number
    sql: ${TABLE}.ContractsDimID ;;
  }

  dimension: action {
    hidden: no
    label: "Action"
    type: string
    sql: ${TABLE}.Action COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension_group: action {
    hidden: no
    label: "Action Date"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ActionDate ;;
  }

  dimension: annual_cpiincrease {
    hidden: no
    label: "Annual CPI Increase"
    type: string
    sql: ${TABLE}.AnnualCPIIncrease COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: approved_to_roll {
    hidden: no
    label: "Approved to Roll"
    type: string
    sql: ${TABLE}.ApprovedToRoll COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }

  dimension: auto_renew_lead_time {
    hidden: no
    label: "Auto Renew Lead Time"
    type: number
    sql: ${TABLE}.AutoRenewLeadTime ;;
  }

  dimension_group: canceled {
    hidden: no
    label: "Cancel Submitted Date"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Canceled ;;
  }

  dimension: canceled_by {
    hidden: no
    label: "Cancel Submitted By"
    type: string
    sql: ${TABLE}.CanceledBy COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension_group: canceled_effective {
    hidden: no
    label: "Cancel Effective Date"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CanceledEffective ;;
  }

  dimension: contract_alert_period {
    hidden: no
    label: "ContractAlertPeriod"
    type: number
    sql: ${TABLE}.ContractAlertPeriod ;;
  }

  dimension: contract_auto_renew {
    hidden: no
    label: "Auto Renew"
    type: string
    sql: ${TABLE}.ContractAutoRenew ;;
  }

  dimension: contract_cancel_lead_time {
    hidden: no
    label: "Contract Cancel Lead Time"
    type: number
    sql: ${TABLE}.ContractCancelLeadTime ;;
  }

  dimension: contract_category {
    hidden: no
    label: "Contract Category"
    type: string
    sql: ${TABLE}.ContractCategory COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: contract_desc {
    hidden: no
    label: "ContractDesc"
    type: string
    sql: ${TABLE}.ContractDesc COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension_group: contract_end {
    hidden: no
    label: "End Date"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ContractEnd ;;
  }

  dimension: contract_id {
    hidden: no
    label: "Contract ID"
    type: string
    sql: ${TABLE}.ContractID COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }

  dimension: contract_notes {
    hidden: no
    label: "Notes"
    type: string
    sql: ${TABLE}.ContractNotes COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: contract_payment_frequency {
    hidden: no
    label: "Payment Frequency"
    type: string
    sql: ${TABLE}.ContractPaymentFrequency COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }

  dimension_group: contract_start {
    hidden: no
    label: "Start Date"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ContractStart ;;
  }

  dimension: contract_unique_id {
    hidden:  no
    label: "Contract Unique ID"
    type: number
    sql: ${TABLE}.ContractUniqueID ;;
  }

  dimension: cosigned_copy_on_file {
    hidden: no
    label: "Co-signed Copy on File"
    type: string
    sql: ${TABLE}.CosignedCopyOnFile COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: do_not_reconcile {
    hidden: no
    label: "DoNotReconcile"
    type: string
    sql: ${TABLE}.DoNotReconcile ;;
  }

  dimension: doc_path {
    hidden: no
    label: "Document Path"
    type: string
    sql: ${TABLE}.DocPath COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension_group: effective {
    hidden: no
    label: "Initial Effective Date"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EffectiveDate ;;
  }

  dimension: external_contract_id {
    hidden: no
    label: "ExternalContractID"
    type: string
    sql: ${TABLE}.ExternalContractID COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: external_contract_link {
    hidden: no
    label: "ExternalContractLink"
    type: string
    sql: ${TABLE}.ExternalContractLink COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: hard_glcnt {
    hidden: no
    label: "HardGLCnt"
    type: number
    sql: ${TABLE}.HardGLCnt ;;
  }

  dimension: initial_period {
    hidden: no
    label: "Initial Period"
    type: number
    sql: ${TABLE}.InitialPeriod ;;
  }

  dimension: initial_value {
    hidden: no
    label: "Initial Value"
    type: string
    sql: ${TABLE}.InitialValue COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: internal_contact {
    hidden: no
    label: "Internal Contact"
    type: string
    sql: ${TABLE}.InternalContact COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: loaded {
    type: string
    sql: ${TABLE}.Loaded ;;
  }

  dimension: loaded_by {
    type: string
    sql: ${TABLE}.LoadedBy ;;
  }

  dimension: num_of_eligibility_rules {
    hidden: no
    label: "NumOfEligibilityRules"
    type: number
    sql: ${TABLE}.NumOfEligibilityRules ;;
  }

  dimension: owner {
    hidden: no
    label: "Contract Owner"
    type: string
    sql: ${TABLE}.Owner COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: parent_contract_id {
    hidden: no
    label: "Parent Contract ID"
    type: string
    sql: ${TABLE}.ParentContractID COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }

  dimension: parent_contract_vendor {
    hidden: no
    label: "Parent Contract Vendor"
    type: string
    sql: ${TABLE}.ParentContractVendor COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: perpetual {
    hidden: no
    label: "Perpetual"
    type: string
    sql: ${TABLE}.Perpetual ;;
  }

  dimension: pre_paid_cost_balance {
    hidden:  no
    label: "Pre Paid Cost Balance"
    type: number
    sql: ${TABLE}.PrePaidCostBalance ;;
  }

  dimension: pre_paid_cost_budget {
    hidden: no
    label: "Pre Paid Cost Budget"
    type: number
    sql: ${TABLE}.PrePaidCostBudget ;;
  }

  dimension: pre_paid_cost_used {
    hidden: no
    label: "Pre Paid Cost Used"
    type: number
    sql: ${TABLE}.PrePaidCostUsed ;;
  }

  dimension: pre_paid_end_period_raw {
    type: string
    sql: ${TABLE}.PrePaidEndPeriod ;;
  }

  dimension: pre_paid_end_year_raw {
    type: string
    sql: ${TABLE}.PrePaidEndYear ;;
  }

  dimension: pre_paid_quantity_balance {
    hidden: no
    label: "Pre Paid Quantity Balance"
    type: number
    sql: ${TABLE}.PrePaidQuantityBalance ;;
  }

  dimension: pre_paid_quantity_budget {
    hidden: no
    label: "Pre Paid Quantity Budget"
    type: number
    sql: ${TABLE}.PrePaidQuantityBudget ;;
  }

  dimension: pre_paid_quantity_used {
    hidden:  no
    label: "Pre Paid Quantity Used"
    type: number
    sql: ${TABLE}.PrePaidQuantityUsed ;;
  }

  dimension: pre_paid_start_period_raw {
    type: string
    sql: ${TABLE}.PrePaidStartPeriod ;;
  }

  dimension: pre_paid_start_year_raw {
    type: number
    value_format_name: id
    sql: ${TABLE}.PrePaidStartYear;;
  }

  dimension: reactivate_on_upload {
    hidden:  no
    label: "Reactivate on Upload"
    type: number
    sql: ${TABLE}.ReactivateOnUpload ;;
  }

  dimension: renewal_notice {
    hidden: no
    label: "Renewal Notice"
    type: string
    sql: ${TABLE}.RenewalNotice  COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }

  dimension: renewal_period {
    hidden: no
    label: "Renewal Period"
    type: number
    sql: ${TABLE}.RenewalPeriod ;;
  }

  dimension: renewal_terms {
    hidden: no
    label: "Renewal Terms"
    type: string
    sql: ${TABLE}.RenewalTerms COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }

  dimension: rpt_to_vendor_freq {
    hidden: no
    label: "Report to Vendor Frequency"
    type: string
    sql: ${TABLE}.RptToVendorFreq COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: rpt_to_vendor_group_by {
    hidden: no
    label: "Report to Vendor Group By"
    type: string
    sql: ${TABLE}.RptToVendorGroupBy COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }

  dimension: signators_client {
    hidden: no
    label: "Signed by (client)"
    type: string
    sql: ${TABLE}.SignatorsClient COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }

  dimension_group: signators_client {
    hidden: no
    label: "Signed by (client) Date"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SignatorsClientDate ;;
  }

  dimension: signators_vendor {
    hidden: no
    label: "Signed by (vendor)"
    type: string
    sql: ${TABLE}.SignatorsVendor COLLATE SQL_Latin1_General_CP1_CI_AI;;
  }

  dimension_group: signators_vendor {
    hidden: no
    label: "Signed by (vendor) Date"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SignatorsVendorDate ;;
  }

  dimension: soft_glcnt {
    hidden: no
    label: "SoftGLCnt"
    type: number
    sql: ${TABLE}.SoftGLCnt ;;
  }

  dimension: svc_add_policy {
    hidden: no
    label: "Svc Addition Policy"
    type: string
    sql: ${TABLE}.SvcAddPolicy COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: svc_add_time {
    hidden: no
    label: "SvcAddTime"
    type: number
    sql: ${TABLE}.SvcAddTime ;;
  }

  dimension: svc_cancel_policy {
    hidden: no
    label: "Svc Cancellation Policy"
    type: string
    sql: ${TABLE}.SvcCancelPolicy COLLATE SQL_Latin1_General_CP1_CI_AI ;;
  }

  dimension: svc_cancel_time {
    hidden: no
    label: "SvcCancelTime"
    type: number
    sql: ${TABLE}.SvcCancelTime ;;
  }

  dimension: vendor_id {
    hidden: no
    label: "VendorID"
    type: number
    sql: ${TABLE}.VendorID ;;
  }

  dimension: x_contract_discount {
    hidden:  no
    label: "xContractDiscount"
    type: number
    sql: ${TABLE}.xContractDiscount ;;
  }

  dimension: x_contract_use_total_user_cnt {
    hidden: no
    label: "xContractUseTotalUserCnt"
    type: string
    sql: ${TABLE}.xContractUseTotalUserCnt ;;
  }

  # Custom dimensions
  dimension: pre_paid_start_period {
    hidden: no
    label: "Pre-Paid Start Period"
    type: string
    sql: CASE WHEN
          LEN(${pre_paid_start_period_raw}) < 2 THEN '0' + ${pre_paid_start_period_raw}
          ELSE ${pre_paid_start_period_raw}
          END;;
  }

  dimension: pre_paid_start_year {
    hidden: no
    label: "Pre-Paid Start Year"
    type: number
    value_format_name: id
    sql: CASE WHEN ${pre_paid_start_year_raw} IS NULL THEN NULL ELSE ${pre_paid_start_year_raw} END;;
  }

  dimension_group: pre_paid_start_year_and_period {
    hidden:  no
    label: "Pre-Paid Start Year & Period"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: CASE WHEN
          (${pre_paid_start_year_raw} IS NULL OR ${pre_paid_start_period_raw} IS NULL) THEN Null
          Else Convert(date,${pre_paid_start_year_raw} +
          (CASE WHEN LEN(TRIM(${pre_paid_start_period_raw})) < 2 then ('0'+TRIM(${pre_paid_start_period_raw}))
            Else ${pre_paid_start_period_raw} END) +'01' )
          END ;;
  }

  dimension: pre_paid_end_period {
    hidden: no
    label: "Pre-Paid End Period"
    type: string
    sql: CASE WHEN
          LEN(${pre_paid_end_period_raw}) < 2 then '0'+${pre_paid_end_period_raw}
          Else ${pre_paid_end_period_raw}
          END ;;
  }

  dimension: pre_paid_end_year {
    hidden: no
    label: "Pre-Paid End Year"
    type: number
    value_format_name: id
    sql: CASE WHEN ${pre_paid_end_year_raw} IS NULL THEN NULL
          Else CAST(${pre_paid_end_year_raw} AS Int)
          END ;;
  }

  dimension_group: pre_paid_end_year_and_period {
    hidden:  no
    label: "Pre-Paid End Year & Period"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: CASE WHEN
          (${pre_paid_end_year_raw} IS NULL OR ${pre_paid_end_period_raw} IS NULL) THEN Null
          Else Convert(date,${pre_paid_end_year_raw} +
          (CASE WHEN LEN(TRIM(${pre_paid_end_period_raw})) < 2 then ('0'+TRIM(${pre_paid_end_period_raw}))
            Else ${pre_paid_end_period_raw} END) +'01' )
          END ;;
  }

  # Measures
  measure: count {
    type: count
  }
}
