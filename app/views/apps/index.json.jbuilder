json.array!(@apps) do |app|
  json.extract! app, :id, :name, :sku_number, :language, :version_number, :copyright, :category, :description, :keywords, :price, :status, :user_id
  json.url app_url(app, format: :json)
end
