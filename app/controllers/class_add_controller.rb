class ClassAddController < ApplicationController
  def class_add
  	response.headers['Content-Type'] = 'application/json'

  	term_id = params["term_id"]
  	year = params["year"]
  	teacher_id = params["teacher_id"]
  	section = params["section"]
  	crn = params["CRN"]
  	syl_id = params["syl_id"]
  	day_id = params["day_id"]
  	day_time = params["day_time"]
  	day_len = params["day_len"]
  	lab_id = params["lab_id"]
  	lab_time = params["lab_time"]
  	lab_len = params["lab_len"]

  	if( !term_id.blank? and !year.blank? and !section.blank?)
  		class_add = Classmodel.new(Term_ID:term_id,Year:year,Teacher_User_ID:teacher_id,Section:section,CRN:crn,Syl_ID:syl_id,Day_ID:day_id,Day_Time:day_time,Day_Len:day_len,Lab_ID:lab_id,Lab_Time:lab_time,Lab_Len:lab_len)
  		class_add.save
  		render text: "Added User"
  	else
  		render text: "Missing information"
  	end
  end
end
