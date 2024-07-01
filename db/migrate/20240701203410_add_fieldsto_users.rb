class AddFieldstoUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :firstname, :string
    add_column :users, :goal, :string
    add_column :users, :food_preferences, :string
    add_column :users, :sport_preferences, :string
    add_column :users, :birthdate, :date
    add_column :users, :type_user, :string
    add_column :users, :access_token, :string
    add_column :users, :refresh_token, :string
  end
end
