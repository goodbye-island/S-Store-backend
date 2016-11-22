class ClassEditController < ApplicationController
  def class_edit
  	if(!params["user_id"].blank?)
	  	user_id = params["user_id"]
	  	user = User.where(User_ID: user_id)

		email = !params["email"].blank? ? params["email"] : user[0].Email
		first_name = !params["first_name"].blank? ? params["first_name"] : user[0].First_Name
		last_name = !params["last_name"].blank? ? params["last_name"] : user[0].Last_Name
		role = !params["role"].blank? ? params["role"] : user[0].Role

		User.where(User_ID: user_id).update_all(Email: email, First_Name: first_name, Last_Name: last_name, Role: role)
		response.headers['Content-Type'] = 'application/json'
		render text: "Edited user Successfully"
  	else
  		render text: "No user found to match id " + params["user_id"]
  	end
  end
end
