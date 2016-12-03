require 'json'

class TeacherViewController < ApplicationController
  def teacher_view
 # 	teacher = User.find_by_sql("Select * from User")
 #	teacher = User.new(Email:"officialaddress@gmail.com",First_Name:"Arnie",Last_Name:"Leitert",Role:2,Status_ID:1)
 #	teacher.save
  	teacher = User.where(Role:2)
  	response.headers['Content-Type'] = 'application/json'
  	render text: teacher.to_json
  end
end
