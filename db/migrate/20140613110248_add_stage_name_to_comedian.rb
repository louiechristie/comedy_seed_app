class AddStageNameToComedian < ActiveRecord::Migration
  def change
    add_column :comedians, :stage_name, :string
  end
end
