class AddValueStartMonthToMeter < ActiveRecord::Migration[5.0]
  def change
    add_column :meters, :valueStartMonth, :integer
  end
end
