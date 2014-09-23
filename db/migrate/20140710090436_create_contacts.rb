class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :skill
      t.date :birthday
      t.binary :photo, limit: 1.megabyte

      t.timestamps
    end
  end
end
