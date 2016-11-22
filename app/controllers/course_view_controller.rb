require 'json'

class CourseViewController < ApplicationController
  def course_view
  	if (params["course_title"].blank? and params["dept_id"].blank? and params["class_id"].blank? and params["description"].blank?)
#  		courses = CourseView.first(10)
#  		render text: courses.to_json
  		render text: "select a parameter"
  	else
		courses = CourseView
		if( !params["course_title"].blank?)
			courses = courses.where(Course_Title: params["course_title"])
		end
		if( !params["dept_id"].blank?)
			courses = courses.where(Dept_ID: params["dept_id"])
		end
		if( !params["class_id"].blank?)
			courses = courses.where(Class_ID: params["class_id"])
		end
		if( !params["description"].blank?)
			courses = courses.where(Description: params["description"])
		end
  		response.headers['Content-Type'] = 'application/json'
		render text: courses.to_json
	end
  end
end
