class AddMeetingDateToEnquiries < ActiveRecord::Migration
  def change
    add_column :enquiries, :meeting_date, :date
  end
end
