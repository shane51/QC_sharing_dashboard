class Link < ActiveRecord::Base
	validates :name, :catgory, :address, presence: true
	CATAGORY_TYPES = ["Common", "QC", "Tools"]

	def self.to_show
		where(nav_flag: 'on').sort
	end
end
