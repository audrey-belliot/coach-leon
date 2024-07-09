class AddPictureToActivities < ActiveRecord::Migration[7.1]
  def change
    add_column :activities, :picture, :string
  end
end
