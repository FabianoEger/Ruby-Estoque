class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :quantidade
      t.references :produto, foreign_key: true
      t.references :compra, foreign_key: true

      t.timestamps
    end
  end
end
