class AddNameToGalleries < ActiveRecord::Migration[5.1]
  def change
    add_column :galleries, :name, :string
  end
end
