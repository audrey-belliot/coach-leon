class ChangeTypeCaloriesToRecipes < ActiveRecord::Migration[7.1]
  def change
    remove_column :recipes, :calories
    add_column :recipes, :calories, :integer
  end
end
