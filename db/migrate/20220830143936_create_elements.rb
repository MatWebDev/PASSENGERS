class CreateElements < ActiveRecord::Migration[7.0]
  def change
    create_table :elements do |t|
      t.string :content
      t.integer :price
      t.references :quote, null: false, foreign_key: true

      t.timestamps
    end
  end
end
