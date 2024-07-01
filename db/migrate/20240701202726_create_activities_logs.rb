class CreateActivitiesLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :activities_logs do |t|
      t.date :date
      t.references :activity, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
