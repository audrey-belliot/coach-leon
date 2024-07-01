class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.string :category
      t.string :activity
      t.text :comment

      t.timestamps
    end
  end
end
