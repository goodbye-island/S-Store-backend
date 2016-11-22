class CourseEditController < ApplicationController
  def course_edit
  	if(!params["class_id"].blank? and !params["dept_id"].blank?)
	  	course = CourseView.where(Class_ID: params["class_id"], Dept_ID: params["dept_id"])

		course_title = !params["course_title"].blank? ? params["course_title"] : course[0].Course_Title
		description = !params["description"].blank? ? params["description"] : course[0].Description

		CourseView.where(Class_ID: params["class_id"], Dept_ID: params["dept_id"]).update_all(Course_Title: course_title, Description: description)
		response.headers['Content-Type'] = 'application/json'
		render text: "Edited course Successfully"
  	else
  		render text: "No course found to match id " + params["class_id"] + " and/or dept_id " + params["dept_id"]
  	end
  end
end
