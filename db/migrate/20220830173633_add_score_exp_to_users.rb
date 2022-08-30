class AddScoreExpToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :score_exp, :integer
  end
end
