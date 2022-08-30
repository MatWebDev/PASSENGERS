class CreateFreelancers < ActiveRecord::Migration[7.0]
  def change
    create_table :freelancers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :address
      t.string :siret
      t.text :description
      t.integer :number_of_projects
      t.date :batch_date
      t.references :user, null: false, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end
