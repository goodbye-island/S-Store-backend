class UserAddController < ApplicationController
  def UserAdd
  	response.headers['Content-Type'] = 'application/json'
  	email = params["Email"]
  	first_name = params["first_name"]
  	last_name = params["last_name"]
  	role = params["role"]
  	status = 1
  	if( !email.blank? and !first_name.blank? and !last_name.blank? and !role.blank?)
  		user = User.new(Email:email,First_Name:first_name,Last_Name:last_name,Role:role,Status_ID:status)
  		user.save
  		render text: "Added User"
  	else
  		render text: "Missing information"
  	end
  end
end
