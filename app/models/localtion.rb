class Localtion < ApplicationRecord
	validates_presence_of :name
	validates_presence_of :member_id

	belongs_to :member, optional: true
end
