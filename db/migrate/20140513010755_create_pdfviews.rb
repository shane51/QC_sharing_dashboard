class CreatePdfviews < ActiveRecord::Migration
  def change
    create_table :pdfviews do |t|
      t.string :name
      t.string :path
      t.string :doctype

      t.timestamps
    end
  end
end
