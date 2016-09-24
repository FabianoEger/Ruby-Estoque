class CreateCompras < ActiveRecord::Migration[5.0]
  def change
    create_table :compras do |t|
      t.integer :valor
      t.date :data
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
