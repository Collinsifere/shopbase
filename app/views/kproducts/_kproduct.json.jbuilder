json.extract! kproduct, :id, :name, :description, :image, :size, :price, :created_at, :updated_at
json.url kproduct_url(kproduct, format: :json)
