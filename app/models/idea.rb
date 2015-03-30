class Idea < ActiveRecord::Base
	validates :name, presence: true
end
