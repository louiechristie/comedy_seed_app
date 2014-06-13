class AddSlugToComedians < ActiveRecord::Migration
  def change
    add_column :comedians, :slug, :string
    add_index :comedians, :slug
  end
end
