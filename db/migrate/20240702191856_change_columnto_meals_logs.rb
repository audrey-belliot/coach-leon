class ChangeColumntoMealsLogs < ActiveRecord::Migration[7.1]
  def change
    remove_column :meals_logs, :category
    rename_column :meals_logs, :details, :comment
  end
end
