class ChangeColumntoActivities < ActiveRecord::Migration[7.1]
  def change
    rename_column :activities, :comment, :details
  end
end
