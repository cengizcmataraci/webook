class AddStatusToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :status, :boolean, :null => false, :default => 0
  end
end
