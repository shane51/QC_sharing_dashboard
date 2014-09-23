class AddPhoneToMemeber < ActiveRecord::Migration
  def change
    add_column :memebers, :phone, :string
  end
end
