json.array!(@customers) do |customer|
  json.extract! customer, :id, :code, :title, :address, :phone, :fax, :email, :taxcode, :debit, :visible, :creator_id
  json.url customer_url(customer, format: :json)
end
