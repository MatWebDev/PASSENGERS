class AddPricePerDayToFreelancers < ActiveRecord::Migration[7.0]
  def change
    add_column :freelancers, :price_per_day, :integer
  end
end
