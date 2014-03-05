class Confection < ActiveRecord::Base

	has_and_belongs_to_many :tags

	validates :name, :code, presence: true
	
end
