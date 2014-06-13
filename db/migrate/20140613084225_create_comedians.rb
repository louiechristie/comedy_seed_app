class CreateComedians < ActiveRecord::Migration
  def change
    create_table :comedians do |t|
      t.text :bio
      t.string :image
      t.string :video
      t.integer :user_id

      t.timestamps
    end
  end
end
