json.extract! compra, :id, :valor, :data, :cliente_id, :created_at, :updated_at
json.url compra_url(compra, format: :json)