class AddSocialMediaToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :social_media, :integer
  end
end
