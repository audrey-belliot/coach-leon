class AddColumnsToPlans < ActiveRecord::Migration[7.1]
  def change
    add_column :plans, :week1, :text
    add_column :plans, :week2, :text
    add_column :plans, :week3, :text
    add_column :plans, :week4, :text
    add_column :plans, :foodplan, :text
  end
end
