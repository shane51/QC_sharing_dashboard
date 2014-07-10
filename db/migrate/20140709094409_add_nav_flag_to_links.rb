class AddNavFlagToLinks < ActiveRecord::Migration
  def change
    add_column :links, :nav_flag, :string
  end
end
