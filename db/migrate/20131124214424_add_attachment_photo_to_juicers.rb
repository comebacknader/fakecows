class AddAttachmentPhotoToJuicers < ActiveRecord::Migration
  def self.up
    change_table :juicers do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :juicers, :photo
  end
end
