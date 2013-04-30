class CreateBookDetails < ActiveRecord::Migration
  def change
    create_table :book_details do |t|
      t.string :detail
      t.references :book

      t.timestamps
    end
  end
end
