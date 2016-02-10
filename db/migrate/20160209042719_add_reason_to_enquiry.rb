class AddReasonToEnquiry < ActiveRecord::Migration
  def change
    add_column :enquiries, :reason, :string
  end
end
