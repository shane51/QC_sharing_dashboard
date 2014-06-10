class Link < ActiveRecord::Base
	validates :name, :catgory, :address, presence: true
	CATAGORY_TYPES = ["Common", "QC", "Tools"]
end
