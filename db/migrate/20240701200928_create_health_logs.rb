class CreateHealthLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :health_logs do |t|
      t.date :date
      t.float :weight
      t.float :measurement
      t.integer :rating_nutrition
      t.integer :rating_activity
      t.integer :rating_mood
      t.float :water
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
