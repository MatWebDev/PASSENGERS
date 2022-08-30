class AddContentToElements < ActiveRecord::Migration[7.0]
  def change
    add_column :elements, :content, :string
    remove_column :elements, :title
    remove_column :elements, :description
  end
end
