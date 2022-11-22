class AddEndDateAndRenameBookindDatesToBooking < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :booking_dates, :booking_start_date
    add_column :bookings, :booking_end_date, :date
  end
end
