class AddTokenToGallery < ActiveRecord::Migration[5.1]
  def change
    add_column :galleries, :token, :string
  end
end
