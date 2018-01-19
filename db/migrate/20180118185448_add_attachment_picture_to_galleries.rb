class AddAttachmentPictureToGalleries < ActiveRecord::Migration[5.1]
  def self.up
    change_table :galleries do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :galleries, :picture
  end
end
