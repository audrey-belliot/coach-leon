class CreatePlansRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :plans_recipes do |t|
      t.references :plan, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
