json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :code, :title, :address, :phone, :fax, :email, :taxcode, :debit, :visible, :creator_id
  json.url supplier_url(supplier, format: :json)
end
