class AddPhoneContactToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :phone_contact, :integer
  end
end
