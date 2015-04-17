class Sticky < ActiveRecord::Base
	SECTIONS = [
    ['Key Partners','first_option'],
    ['Key Activities','second_option'],
    ['Value Proposition','third_option'],
    ['Customer Relationships','fourth_option']
  ]
	belongs_to :idea
	belongs_to :user
	validates :body, :user_id, :idea_id, :section, presence: true

	# Makes sure the only thing included is one of the strings above
end
