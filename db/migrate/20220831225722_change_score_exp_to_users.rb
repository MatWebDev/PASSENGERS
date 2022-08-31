class ChangeScoreExpToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :score_exp, :integer, default: 0
  end
end
