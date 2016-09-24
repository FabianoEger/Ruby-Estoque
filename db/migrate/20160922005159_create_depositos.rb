class CreateDepositos < ActiveRecord::Migration[5.0]
  def change
    create_table :depositos do |t|
      t.references :produto, foreign_key: true
      t.integer :quantidade

      t.timestamps
    end
  end
end
