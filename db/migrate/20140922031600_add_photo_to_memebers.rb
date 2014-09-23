class AddPhotoToMemebers < ActiveRecord::Migration
  def change
    add_column :memebers, :photo, :string
  end
end
