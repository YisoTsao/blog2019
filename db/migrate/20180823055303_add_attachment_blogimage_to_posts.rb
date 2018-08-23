class AddAttachmentBlogimageToPosts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :posts do |t|
      t.attachment :blogimage
    end
  end

  def self.down
    remove_attachment :posts, :blogimage
  end
end
