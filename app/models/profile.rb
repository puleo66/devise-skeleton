class Profile < ApplicationRecord
	validates_presence_of :bio
	validates_presence_of :member_id

	belongs_to :member, optional: true

	has_attached_file :profile_pic, styles: { small: "100x100#" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :profile_pic, content_type: /\Aimage\/.*\Z/
end
