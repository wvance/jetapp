# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..20).each do |i|
  Idea.create!(name: "New Idea #{i}", 
  	description: %{
      This is a new idea description. This description is a test of what a real description would look like in the applicaiton. A real idea description would be very detailed and provide users with an overview of the idea. 
  		}, 
  	author: "wesley.vance@mac.com", 
  	valueProposition: %{
			Helping cusstomer X to do Y by providing them with Z. 
  		}, 
  	customerSegment: %{
			After interviewing with 100 customers, I have decided that the best customer for my product is person X with attributes Y.
  		},
  	marketSize: %{
			There are X number of people, in the world, in my customer segment. The lifetime value of a customer is $y. Thus my market size is $x*y. 
  		},
  	stage: "idea",
  	vision: %{
			I am very passionate about solving problem z with customer y. I want to see this idea through till the end! My long-term vision of this idea is to do x.
  		},
  	sector:"technology"
  )
end
Idea.create!(name: "BlackBox", 
  	description: %{
      Image a world, where everything is connected. Your real life and digital life coexist together as one. An effienct life, driven by self improvement. This is the idea of BlackBox, your personal data aggregator. BlackBox will aggregate your data into one area, allowing other applications to use this and learn you! 
  		}, 
  	author: "wesley.vance@mac.com", 
  	valueProposition: %{
			To deliver personal big data analytics to developers & IoT fanatics to help solve their disconnected life. 
  		}, 
  	customerSegment: %{
			After interviewing with 100 customers, I have decided that the best customer for my product is a developer who researches IoT and AI. This developer would be between the ages of 20 - 40 and be attempting to track his life thorugh data. 
  		},
  	marketSize: %{
			There are 100 million users that are developers focused on IoT. With a lifetime value of $10/user, this leave a Total Avaliable Market size of $1 Billion. 
  		},
  	stage: "idea",
  	vision: %{
			I hope to see BlackBox turn into JARVIS one day! I want to enable AI for the future. All these systems work under a fundamental idea of aggregating data and computing it in real time. Jarvis, Vikki, Joshua, Her, these all are able to see in real time, what their users are doing. 
  		},
  	sector:"technology"
  )
