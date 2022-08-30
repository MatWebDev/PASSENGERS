class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.integer :total_price
      t.references :freelancer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
