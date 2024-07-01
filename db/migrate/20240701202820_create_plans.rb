class CreatePlans < ActiveRecord::Migration[7.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
