view: fact_invoices {
  sql_table_name: dbo.tblFactInvoices ;;
  fields_hidden_by_default: yes

  dimension: country_id {
    type: number
    sql: ${TABLE}.CountryID ;;
  }
  dimension: fact_invoices_id {
    type: number
    sql: ${TABLE}.FactInvoicesID ;;
  }
  dimension: gross_paid_amt {
    type: number
    sql: ${TABLE}.GrossPaidAmt ;;
  }
  dimension: invoice_amt {
    type: number
    sql: ${TABLE}.InvoiceAmt ;;
  }
  dimension: invoice_currency_id {
    type: number
    sql: ${TABLE}.InvoiceCurrencyID ;;
  }
  dimension: invoice_id {
    type: number
    sql: ${TABLE}.InvoiceID ;;
  }
  dimension: invoice_tax {
    type: number
    sql: ${TABLE}.InvoiceTax ;;
  }
  dimension: invoice_total {
    type: number
    sql: ${TABLE}.InvoiceTotal ;;
  }
  dimension: loaded {
    type: string
    sql: ${TABLE}.Loaded ;;
  }
  dimension: loaded_by {
    type: string
    sql: ${TABLE}.LoadedBy ;;
  }
  dimension: next_approver_user_id {
    type: number
    sql: ${TABLE}.NextApproverUserID ;;
  }
  dimension: orig_gross_paid_amt {
    type: number
    sql: ${TABLE}.OrigGrossPaidAmt ;;
  }
  dimension: orig_invoice_amt {
    type: number
    sql: ${TABLE}.OrigInvoiceAmt ;;
  }
  dimension: orig_invoice_tax {
    type: number
    sql: ${TABLE}.OrigInvoiceTax ;;
  }
  dimension: orig_invoice_total {
    type: number
    sql: ${TABLE}.OrigInvoiceTotal ;;
  }
  dimension: orig_past_due_amt {
    type: number
    sql: ${TABLE}.OrigPastDueAmt ;;
  }
  dimension: orig_payment_amt {
    type: number
    sql: ${TABLE}.OrigPaymentAmt ;;
  }
  dimension: orig_short_pay_amt {
    type: number
    sql: ${TABLE}.OrigShortPayAmt ;;
  }
  dimension: past_due_amt {
    type: number
    sql: ${TABLE}.PastDueAmt ;;
  }
  dimension: payment_amt {
    type: number
    sql: ${TABLE}.PaymentAmt ;;
  }
  dimension: payment_currency_id {
    type: number
    sql: ${TABLE}.PaymentCurrencyID ;;
  }
  dimension: short_pay_amt {
    type: number
    sql: ${TABLE}.ShortPayAmt ;;
  }
  dimension: vendor_acct_id {
    type: number
    sql: ${TABLE}.VendorAcctID ;;
  }
  dimension: vendor_id {
    hidden: no
    label: "VendorID"
    type: number
    sql: ${TABLE}.VendorID ;;
  }
  measure: count {
    type: count
  }
}
