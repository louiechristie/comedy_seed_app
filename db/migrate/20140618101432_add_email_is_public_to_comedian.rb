class AddEmailIsPublicToComedian < ActiveRecord::Migration
  def change
    add_column :comedians, :email_is_public, :boolean, null: false, default: false
  end
end
