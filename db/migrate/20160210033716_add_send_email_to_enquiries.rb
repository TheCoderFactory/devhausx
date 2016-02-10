class AddSendEmailToEnquiries < ActiveRecord::Migration
  def change
    add_column :enquiries, :send_email, :boolean
  end
end
