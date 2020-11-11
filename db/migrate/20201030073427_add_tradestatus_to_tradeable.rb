class AddTradestatusToTradeable < ActiveRecord::Migration[6.0]
  def change
    add_column :tradeables, :tradestatus, :integer, :null => false, :default => 0
  end
end
