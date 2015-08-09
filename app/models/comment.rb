class Comment < ActiveRecord::Base
	belongs_to :concert

	validates :user_name, presence: {message: "create you user name please!"}
	validates :comment, presence: {message: "write something to comment on this concert"}

end
