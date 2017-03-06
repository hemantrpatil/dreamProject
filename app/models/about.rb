# == Schema Information
#
# Table name: abouts
#
#  id                    :integer          not null, primary key
#  aboutinfo             :text(65535)
#  shopname              :string(255)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  user_id               :integer
#  shopimg_file_name     :string(255)
#  shopimg_content_type  :string(255)
#  shopimg_file_size     :integer
#  shopimg_updated_at    :datetime
#  shopimg1_file_name    :string(255)
#  shopimg1_content_type :string(255)
#  shopimg1_file_size    :integer
#  shopimg1_updated_at   :datetime
#  shopimg2_file_name    :string(255)
#  shopimg2_content_type :string(255)
#  shopimg2_file_size    :integer
#  shopimg2_updated_at   :datetime
#  shopimg3_file_name    :string(255)
#  shopimg3_content_type :string(255)
#  shopimg3_file_size    :integer
#  shopimg3_updated_at   :datetime
#

class About < ActiveRecord::Base

	belongs_to :user


	has_attached_file :shopimg, styles: { large: "600x600",  medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	has_attached_file :shopimg1, styles: { large: "600x600",  medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	has_attached_file :shopimg2, styles: { large: "600x600",  medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	has_attached_file :shopimg3, styles: { large: "600x600",  medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"	
    validates_attachment_content_type :shopimg, content_type: /\Aimage\/.*\z/
    validates_attachment_content_type :shopimg1, content_type: /\Aimage\/.*\z/
    validates_attachment_content_type :shopimg2, content_type: /\Aimage\/.*\z/
    validates_attachment_content_type :shopimg3, content_type: /\Aimage\/.*\z/
end
