class Sticky < ActiveRecord::Base
	SECTIONS = [
    ['Key Partners','Key Partners'],
    ['Key Activities','Key Activities'],
    ['Key Resources','Key Resources'],
    ['Value Proposition','Value Proposition'],
    ['Customer Relationships','Customer Relationships'],
    ['Channels','Channels'],
    ['Customer Segments','Customer Segments'],
    ['Cost Structure','Cost Structure'],
    ['Revenue Streams','Revenue Streams']
  ]
  VALIDATESECTION = ["Key Partners", "Key Activities", "Key Resources", "Value Proposition", "Customer Relationships", "Channels", "Customer Segments", "Cost Structure", "Revenue Streams"]
	belongs_to :idea
	belongs_to :user
	validates :body, :user_id, :idea_id, :section, presence: true

	# Makes sure the only thing included is one of the strings above
	validates :section, inclusion: VALIDATESECTION
end
