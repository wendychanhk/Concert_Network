class Concert < ActiveRecord::Base

	has_many :comments 

	validates :band, presence: {message: "add a band's name"}
	validates :venue, presence: {message: "add a venue's name"}
	validates :city, presence: {message: "add a city's name"}
	validates :price, presence: {message: "add a price of the concert"}
	validates :date, presence: {message: "put the concert's date please!"}
	validates :description, presence: {message: "what's the concert about?"}
	

end
