class AddUsernameToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :username, :string
  end
end
