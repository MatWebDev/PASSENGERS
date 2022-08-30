class AddScoreDifficultyToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :score_difficulty, :integer
  end
end
