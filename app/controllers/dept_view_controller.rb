class DeptViewController < ApplicationController
  def getDepts
  	departments = DeptView.find_by_sql("Select * from Dept")
  	response.headers['Content-Type'] = 'application/json'
  	render text: departments.to_json
  end
end
