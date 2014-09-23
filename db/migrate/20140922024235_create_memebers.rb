class CreateMemebers < ActiveRecord::Migration
  def change
    create_table :memebers do |t|
      t.string :name
      t.string :title
      t.date :birthday
      t.text :description

      t.timestamps
    end
  end
end
