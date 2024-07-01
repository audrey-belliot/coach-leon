class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :category
      t.text :details
      t.string :calories

      t.timestamps
    end
  end
end
