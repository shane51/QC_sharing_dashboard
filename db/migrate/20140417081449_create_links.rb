class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :catgory
      t.string :address
      t.decimal :count

      t.timestamps
    end
  end
end
