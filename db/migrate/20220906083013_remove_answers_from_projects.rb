class RemoveAnswersFromProjects < ActiveRecord::Migration[7.0]
  def change
    remove_column :projects, :answers, :string
  end
end
