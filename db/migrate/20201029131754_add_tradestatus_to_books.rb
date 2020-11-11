class AddTradestatusToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :tradestatus, :integer
  end
end
