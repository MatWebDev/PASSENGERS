class ChangeStatusDefaultToCollaborations < ActiveRecord::Migration[7.0]
  def change
    change_column :collaborations, :status, :string, default: 'pending'
  end
end
