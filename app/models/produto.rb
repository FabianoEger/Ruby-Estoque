class Produto < ApplicationRecord
  belongs_to :items
  belongs_to :depositos
end
