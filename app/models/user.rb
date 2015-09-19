class User < ActiveRecord::Base
	attr_accessible :userID, :username, :password, :fullname, :email, :affiliation, :roleID, :gender, :age
end
