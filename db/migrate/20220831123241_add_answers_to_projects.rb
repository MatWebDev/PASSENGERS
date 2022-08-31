class AddAnswersToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :answers, :string, array: true, default: []
  end
end
