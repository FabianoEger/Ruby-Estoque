class DepositoSerializer < BaseSerializer
  attributes :id, :id, :produto_id, :quantidade, :created_at, :updated_at
  belongs_to :produto
  
  link(:self) { deposito_path(object) }
  
end
