class AddAttachmentPhotoToAdvertisements < ActiveRecord::Migration
  def self.up
    change_table :advertisements do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :advertisements, :photo
  end
end
