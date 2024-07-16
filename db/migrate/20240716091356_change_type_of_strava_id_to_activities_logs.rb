class ChangeTypeOfStravaIdToActivitiesLogs < ActiveRecord::Migration[7.1]
  def change
    remove_column :activities_logs, :strava_id
    add_column :activities_logs, :strava_id, :string
  end
end
