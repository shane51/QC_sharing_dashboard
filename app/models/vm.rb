class Vm < ActiveRecord::Base
	
	validates :ip, :user, :description, :period, :build, presence: true
	validates :ip, allow_blank: true, uniqueness: true, format: {
		with: /\A(9\.(\d{1,3})\.(\d{1,3})\.(\d{1,3}))/,
		message: 'must be an IP like 9.xxx.xxx.xxx.'
	}
	
end
