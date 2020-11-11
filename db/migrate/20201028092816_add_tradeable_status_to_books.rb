class AddTradeableStatusToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :tradeablestatus, :boolean, :default => false, :null => false
  end
end
