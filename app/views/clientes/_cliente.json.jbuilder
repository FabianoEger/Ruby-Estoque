json.extract! cliente, :id, :nome, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)