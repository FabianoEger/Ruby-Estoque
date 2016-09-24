class ProdutoSerializer < BaseSerializer
  attributes :id, :id, :nome, :preco, :created_at, :updated_at
  has_many :items
  has_many :depositos
  link(:self) { produto_path(object) }
  link(:items) { produto_items_path(object) }
  link(:depositos) { produto_depositos_path(object) }
end
