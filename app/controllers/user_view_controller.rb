class UserViewController < ApplicationController
  def UserView
  	response.headers['Content-Type'] = 'application/json'
  	user = User.where(User_ID: params["user_id"])
  	userHash = Hash.new
  	userHash["User_ID"] = user[0]["User_ID"]
  	userHash["Email"] = user[0]["Email"]
  	userHash["First_Name"] = user[0]["First_Name"]
  	userHash["Last_Name"] = user[0]["Last_Name"]
  	userHash["Role"] = user[0]["Role"]
  	userHash["Status_ID"] = user[0]["Status_ID"]

  	if(userHash["Status_ID"]==true)
  		render text: userHash.to_json
  	else
  		render text: "Account is deactivated"
  	end
  end
end
