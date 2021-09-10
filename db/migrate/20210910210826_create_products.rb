class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :code
      t.string :description
      t.string :presentation
      t.string :concentration
      t.boolean :controlled
      t.references :classification, null: false, foreign_key: true

      t.timestamps
    end
  end
end
