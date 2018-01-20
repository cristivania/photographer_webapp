class AddGalleryTokenToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :gallery_token, :string
  end
end
