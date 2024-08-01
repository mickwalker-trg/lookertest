connection: "spend_uat"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: fact_inventory {
  label: "Insights Model"
  join: fact_invoices {
    type: full_outer
    relationship: many_to_one
    sql_on: ${fact_invoices.vendor_acct_id} = ${vendor_accounts.vendor_acct_id} ;;
    sql_where: (${vendor_accounts.billing_acct} = -1 OR ${fact_invoices.vendor_acct_id} IS NOT NULL);;
  }

  join: vendors {
    type: full_outer
    view_label: "Billing Vendors"
    relationship: many_to_one
    sql_on: ${fact_inventory.billing_vendor_id} = ${vendors.vendor_id} ;;
    sql_where: (${vendor_accounts.billing_acct} = -1 OR ${fact_invoices.vendor_acct_id} IS NOT NULL);;
  }

  join: vendor_accounts {
    view_label: "Billing Account Attributes"
    type: full_outer
    relationship: many_to_one
    sql_on: ${vendor_accounts.vendor_acct_id} = ${fact_inventory.billing_vendor_acct_id} ;;
    sql_where: (${vendor_accounts.billing_acct} = -1 OR ${fact_invoices.vendor_acct_id} IS NOT NULL);;
  }

  join: contracts {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_inventory.contract_unique_id} = ${contracts.contract_unique_id} ;;
  }

  join: services {
    view_label: "Services"
    type: left_outer
    relationship: many_to_one
    sql_on: ${services.vendor_id} = ${fact_inventory.billing_vendor_id} ;;
  }

}
