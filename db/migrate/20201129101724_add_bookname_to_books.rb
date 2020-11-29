class AddBooknameToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :bookname, :string
  end
end
