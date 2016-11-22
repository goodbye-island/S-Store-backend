require 'json'

class TeacherViewController < ApplicationController
  def teacher_view
  	teacher = User.where(Role:2)
  	response.headers['Content-Type'] = 'application/json'
  	render text: teacher.to_json
  end
end
