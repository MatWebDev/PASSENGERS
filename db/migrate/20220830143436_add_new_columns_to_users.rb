class AddNewColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :siret, :string
    add_column :users, :description, :text
    add_column :users, :number_of_projects, :integer
    add_column :users, :batch_date, :date
  end
end
