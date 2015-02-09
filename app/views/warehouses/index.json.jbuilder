json.array!(@warehouses) do |warehouse|
  json.extract! warehouse, :id, :title, :description, :address, :phone, :fax, :visible, :creator_id
  json.url warehouse_url(warehouse, format: :json)
end
