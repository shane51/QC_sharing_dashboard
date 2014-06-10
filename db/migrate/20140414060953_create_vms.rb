class CreateVms < ActiveRecord::Migration
  def change
    create_table :vms do |t|
      t.string :ip
      t.text :description
      t.string :user
      t.text :period

      t.timestamps
    end
  end
end
