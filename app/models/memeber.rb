class Memeber < ActiveRecord::Base
	validates :name, :title, :birthday, :photo, :description, presence: true
	validates :name, allow_blank: true, uniqueness: true
end
