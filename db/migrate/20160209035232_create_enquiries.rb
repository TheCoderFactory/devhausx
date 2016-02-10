class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :message

      t.timestamps null: false
    end
  end
end
