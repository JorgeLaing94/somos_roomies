class AddRecipientEmailToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :recipient_email, :text
  end
end
