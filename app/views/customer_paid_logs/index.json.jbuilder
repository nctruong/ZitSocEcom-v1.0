json.array!(@customer_paid_logs) do |customer_paid_log|
  json.extract! customer_paid_log, :id, :customer_id, :beforepaid, :paid, :afterpaid, :dateofpayment, :note, :creator_id
  json.url customer_paid_log_url(customer_paid_log, format: :json)
end
