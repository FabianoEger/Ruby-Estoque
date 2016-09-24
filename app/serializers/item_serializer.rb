class ItemSerializer < BaseSerializer
  attributes :id, :id, :quantidade, :produto_id, :compra_id, :created_at, :updated_at
  belongs_to :produto
  belongs_to :compra
  
   link(:self) { item_path(object) }
end
