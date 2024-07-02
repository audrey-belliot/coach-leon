class AddColumnstoActivityLogs < ActiveRecord::Migration[7.1]
  def change
    add_column :activities_logs, :comment, :text
    add_column :activities_logs, :duration, :float
    add_column :activities_logs, :strava_id, :integer
  end
end
