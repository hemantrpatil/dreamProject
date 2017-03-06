class AddAttachmentShopimgToAbouts < ActiveRecord::Migration
  def self.up
    change_table :abouts do |t|
      t.attachment :shopimg
       t.attachment :shopimg1
        t.attachment :shopimg2
         t.attachment :shopimg3
    end
  end

  def self.down
    remove_attachment :abouts, :shopimg
  end
end
