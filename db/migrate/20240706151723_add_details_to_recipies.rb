class AddDetailsToRecipies < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :ingredient, :string
    add_column :recipes, :picture, :string
    add_column :recipes, :name, :string
  end
end
