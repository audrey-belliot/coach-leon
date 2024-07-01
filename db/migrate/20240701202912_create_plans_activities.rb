class CreatePlansActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :plans_activities do |t|
      t.references :plan, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
