class Pdfview < ActiveRecord::Base
	validates :name, :path, :doctype, presence: true
	validates :path, allow_blank: true, format: {
		with: %r{\.(pdf)\Z}i,
		message: ' Must use be PDF file right now, will consider other format later.'
	}
	DOC_CATAGORY = ["Automation", "Installation", " Product", "Feature", "Defect", "Mobile", "Others", "Tools"]
	
end
