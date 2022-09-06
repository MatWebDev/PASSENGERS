class AddOtherAnswersToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :origin, :string
    add_column :projects, :website, :string
  end
end
