class AddTimeAndCaloriesLossToActivities < ActiveRecord::Migration[7.1]
  def change
    add_column :activities, :duration, :float
    add_column :activities, :calories_loss, :integer
  end
end
