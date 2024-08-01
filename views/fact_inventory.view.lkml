view: fact_inventory {
  sql_table_name: dbo.tblFactInventory ;;
  label: "Fact Inventory"
  fields_hidden_by_default: yes

  dimension: fact_inventory_id {
    type: number
    sql: ${TABLE}.FactInventoryID ;;
    primary_key: yes
  }
  dimension: billing_vendor_acct_id {
    type: number
    sql: ${TABLE}.BillingVendorAcctID ;;
  }
  dimension: billing_vendor_id {
    type: number
    sql: ${TABLE}.BillingVendorID ;;
  }
  dimension: building_group_id {
    type: number
    sql: ${TABLE}.BuildingGroupID ;;
  }
  dimension: building_id {
    type: number
    sql: ${TABLE}.BuildingID ;;
  }
  dimension: building_idof_use {
    type: number
    sql: ${TABLE}.BuildingIDOfUse ;;
  }
  dimension: ci_id {
    type: number
    sql: ${TABLE}.CI_ID ;;
  }
  dimension: ci_price_type_id {
    type: number
    sql: ${TABLE}.CI_PriceTypeID ;;
  }
  dimension: ci_rollup_id {
    type: number
    sql: ${TABLE}.CI_RollupID ;;
  }
  dimension: contract_eligibility_dim_id {
    type: number
    sql: ${TABLE}.ContractEligibilityDimID ;;
  }
  dimension: contract_eligibility_id {
    type: number
    sql: ${TABLE}.ContractEligibilityID ;;
  }
  dimension: contract_item_cost {
    type: number
    sql: ${TABLE}.ContractItemCost ;;
    hidden: no
    label: "Contract Item Cost"
  }
  dimension: contract_item_swift_code {
    type: string
    sql: ${TABLE}.ContractItemSwiftCode COLLATE SQL_Latin1_General_CP1_CI_AI;;
    hidden: no
    label: "Contract Item Currency"
  }
  dimension: contract_unique_id {
    type: number
    sql: ${TABLE}.ContractUniqueID ;;
  }
  dimension: contract_vendor_id {
    type: number
    sql: ${TABLE}.ContractVendorID ;;
  }
  dimension: cost {
    type: number
    sql: ${TABLE}.Cost ;;
  }
  dimension: country_group_id {
    type: number
    sql: ${TABLE}.CountryGroupID ;;
  }
  dimension: countryid {
    type: number
    sql: ${TABLE}.CountryID ;;
  }
  dimension: country_id {
    type: number
    sql: ${TABLE}.Country_ID ;;
  }
  dimension: currency_id {
    type: number
    sql: ${TABLE}.CurrencyID ;;
  }
  dimension: delivery_vendor_id {
    type: number
    sql: ${TABLE}.DeliveryVendorID ;;
  }
  dimension: dept_mgr_user_id {
    type: number
    sql: ${TABLE}.DeptMgrUserID ;;
  }

  dimension: gtemp_id {
    type: number
    sql: ${TABLE}.GTEmpID ;;
  }
  dimension: hard_cost {
    type: number
    sql: ${TABLE}.HardCost ;;
    label: "Cost - Hard"
    hidden: no
  }
  dimension: hard_glaccount_id {
    type: number
    sql: ${TABLE}.HardGLAccountID ;;
  }
  dimension: hard_soft_pct {
    type: number
    sql: ${TABLE}.HardSoftPct ;;
  }
  dimension: loaded {
    type: string
    sql: ${TABLE}.Loaded ;;
  }
  dimension: loaded_by {
    type: string
    sql: ${TABLE}.LoadedBy ;;
  }
  dimension: locations_dim_id {
    type: number
    sql: ${TABLE}.LocationsDimID ;;
  }
  dimension: mdsvia_id {
    type: number
    sql: ${TABLE}.MDSViaID ;;
  }
  dimension: node_id {
    type: number
    sql: ${TABLE}.NodeID ;;
  }
  dimension: parent_mgr_user_id {
    type: number
    sql: ${TABLE}.ParentMgrUserID ;;
  }
  dimension: parent_node_id {
    type: number
    sql: ${TABLE}.ParentNodeID ;;
  }
  dimension: platform_id {
    type: number
    sql: ${TABLE}.PlatformID ;;
  }
  dimension: platform_map_id {
    type: number
    sql: ${TABLE}.PlatformMapID ;;
  }
  dimension: platform_svc_usage_id {
    type: number
    sql: ${TABLE}.PlatformSvcUsageID ;;
  }
  dimension: platform_vendor_acct_id {
    type: number
    sql: ${TABLE}.PlatformVendorAcctID ;;
  }
  dimension: platform_vendor_id {
    type: number
    sql: ${TABLE}.PlatformVendorID ;;
  }
  dimension: pmccid {
    type: number
    value_format_name: id
    sql: ${TABLE}.PMCCID ;;
  }
  dimension: pricing_hard_cost {
    type: number
    sql: ${TABLE}.PricingHardCost ;;
  }
  dimension: pricing_soft_cost {
    type: number
    sql: ${TABLE}.PricingSoftCost ;;
  }
  dimension: pricing_tax1 {
    type: number
    sql: ${TABLE}.PricingTax1 ;;
    hidden: no
    label: "Contract Item Tax Amount 1"
  }
  dimension: pricing_tax2 {
    type: number
    sql: ${TABLE}.PricingTax2 ;;
    hidden: no
    label: "Contract Item Tax Amount 2"
  }
  dimension: project_code_alloc_dim_id {
    type: number
    sql: ${TABLE}.ProjectCodeAllocDimID ;;
  }
  dimension: psudim_id {
    type: number
    sql: ${TABLE}.PSUDimID ;;
  }
  dimension: psurow_id {
    type: number
    sql: ${TABLE}.PSURowID ;;
  }
  dimension: pvid {
    type: number
    value_format_name: id
    sql: ${TABLE}.PVID ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
    label: "Service Entitlement Quantity"
    hidden: no
  }
  dimension: service_billing_days {
    type: number
    sql: ${TABLE}.ServiceBillingDays ;;
  }
  dimension: service_vendor_id {
    type: number
    sql: ${TABLE}.ServiceVendorID ;;
  }
  dimension: soft {
    type: number
    sql: ${TABLE}.Soft ;;
  }
  dimension: soft_cost {
    type: number
    sql: ${TABLE}.SoftCost ;;
    label: "Cost - Soft"
    hidden: no
  }
  dimension: soft_glaccount_id {
    type: number
    sql: ${TABLE}.SoftGLAccountID ;;
  }
  dimension: svc_id {
    type: number
    sql: ${TABLE}.SvcID ;;
  }
  dimension: tax1 {
    type: number
    sql: ${TABLE}.Tax1 ;;
    label: "Tax Amount 1"
    hidden: no
  }
  dimension: tax2 {
    type: number
    sql: ${TABLE}.Tax2 ;;
    label: "Tax Amount 2"
    hidden: no
  }

  dimension: tax_id1 {
    type: number
    sql: ${TABLE}.TaxID1 ;;
  }
  dimension: tax_id2 {
    type: number
    sql: ${TABLE}.TaxID2 ;;
  }
  dimension: unused_days {
    type: number
    sql: ${TABLE}.UnusedDays ;;
    label: "Unused Days"
    hidden: no
  }
  dimension: user_id {
    type: number
    sql: ${TABLE}.UserID ;;
  }

  # Custom dimensions
  dimension: tax_total {
    label: "Tax Total"
    type:  number
    sql:  ${tax1} + ${tax2} ;;
    hidden:  no
  }
  dimension: total {
    label: "Total"
    type:  number
    sql:  ${cost} + ${tax1} + ${tax2} ;;
    hidden: no
  }
  dimension: contract_item_total_tax {
    label: "Contract Item Tax Total"
    type: number
    sql: ${pricing_tax1} + ${pricing_tax2} ;;
  }
  dimension: contract_item_total {
    label: "Contract Item Total"
    type: number
    sql: ${contract_item_cost} + ${pricing_tax1} + ${pricing_tax2} ;;
  }

  # Measures
  measure: count {
    type: count
  }
}
