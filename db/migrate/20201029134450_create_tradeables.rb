class CreateTradeables < ActiveRecord::Migration[6.0]
  def change
    create_table :tradeables do |t|
      t.integer :status
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.references :offered_book, index: true, foreign_key: { to_table: :books }

      t.timestamps
    end
  end
end
