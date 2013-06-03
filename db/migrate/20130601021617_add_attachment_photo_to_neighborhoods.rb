class AddAttachmentPhotoToNeighborhoods < ActiveRecord::Migration
  def self.up
    change_table :neighborhoods do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :neighborhoods, :photo
  end
end
