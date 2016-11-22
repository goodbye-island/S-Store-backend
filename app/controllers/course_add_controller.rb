class CourseAddController < ApplicationController
  def course_add
  	response.headers['Content-Type'] = 'application/json'

  	class_id = params["class_id"]
  	dept_id = params["dept_id"]
  	course_title = params["course_title"]
  	description = params["description"]

  	if( !class_id.blank? and !dept_id.blank?)
  		course_add = CourseView.new(Class_ID:class_id,Dept_ID:dept_id,Course_Title:course_title,Description:description)
  		course_add.save
  		render text: "Added Course"
  	else
  		render text: "Missing information"
  	end
  end
end
