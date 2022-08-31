class AddColumnsToCollaborations < ActiveRecord::Migration[7.0]
  def change
    add_column :collaborations, :title, :string
    add_column :collaborations, :total_price, :integer
  end
end
