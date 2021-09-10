json.extract! product, :id, :code, :description, :presentation, :concentration, :controlled, :classification_id, :created_at, :updated_at
json.url product_url(product, format: :json)
