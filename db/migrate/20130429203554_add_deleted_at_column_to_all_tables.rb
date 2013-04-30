class AddDeletedAtColumnToAllTables < ActiveRecord::Migration
  def change
    add_column :books, :deleted_at, :timestamp
    add_column :book_details, :deleted_at, :timestamp
  end
end
