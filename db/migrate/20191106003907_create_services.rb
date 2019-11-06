class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.text :description
      t.text :option
      t.float :price
      t.references :provider, foreign_key: true
      t.references :categories, foreign_key: true

      t.timestamps
    end
  end
end