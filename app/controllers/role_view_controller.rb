class RoleViewController < ApplicationController
  def role_view
  	roles = DeptView.find_by_sql("Select * from Roles")
  	response.headers['Content-Type'] = 'application/json'
  	render text: roles.to_json
  end
end
