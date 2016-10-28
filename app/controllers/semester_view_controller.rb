class SemesterViewController < ApplicationController
  def getSemesters
  	semesters = DeptView.find_by_sql("Select * from Semesters")
  	response.headers['Content-Type'] = 'application/json'
  	render text: semesters.to_json
  end
end
