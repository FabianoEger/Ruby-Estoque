class ClienteSerializer < BaseSerializer
  attributes :id, :id, :nome, :created_at, :updated_at
  has_many :compras
  
  link(:self) { cliente_path(object) }
  link(:compras) { cliente_compras_path(object) }
end
