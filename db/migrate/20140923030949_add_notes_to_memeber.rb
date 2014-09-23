class AddNotesToMemeber < ActiveRecord::Migration
  def change
    add_column :memebers, :notes, :string
  end
end
