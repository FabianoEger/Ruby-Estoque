json.extract! item, :id, :quantidade, :produto_id, :compra_id, :created_at, :updated_at
json.url item_url(item, format: :json)