class Localtion < ApplicationRecord
	validates_presence_of :name, :address_1, :address_2, :city, :region, :zip_code, :country, :description
	validates_presence_of :member_id

	belongs_to :member, optional: true
end
