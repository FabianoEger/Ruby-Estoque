class CompraSerializer < BaseSerializer
  attributes :id, :id, :valor, :data, :cliente_id, :created_at, :updated_at
  belongs_to :cliente
  has_many :items
  
   link(:self) { compra_path(object) }
   link(:items) { compra_items_path(object) }
end
