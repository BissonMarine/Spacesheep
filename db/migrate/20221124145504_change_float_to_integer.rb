class ChangeFloatToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column(:bookings, :total_price, :integer)
    change_column(:spaceships, :price, :integer)
  end
end
