class RemoveBioUserImageVideoFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :bio
    remove_column :users, :user_image
    remove_column :users, :video
  end

  def down
    add_column :users, :video, :string
    add_column :users, :user_image, :string
    add_column :users, :bio, :string
  end
end
