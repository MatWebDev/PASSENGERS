class AddYearExpToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :year_exp, :integer
    remove_column :users, :batch_date, :date
  end
end
