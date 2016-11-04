class UserDeleteController < ApplicationController
  def UserDelete
  	user_id = params["user_id"]
 	User.where(User_ID: user_id).update_all(Status_ID: 0)
 	render text: "User Deactivated"
  end
end
