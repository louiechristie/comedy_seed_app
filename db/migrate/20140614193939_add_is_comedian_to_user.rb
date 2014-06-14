class AddIsComedianToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_comedian, :boolean
  end
end
