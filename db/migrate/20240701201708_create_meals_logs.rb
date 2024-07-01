class CreateMealsLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :meals_logs do |t|
      t.date :date
      t.string :category
      t.text :details
      t.references :recipe, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
