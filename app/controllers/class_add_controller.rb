class ClassAddController < ApplicationController
  def class_add
  	response.headers['Content-Type'] = 'application/json'

  	class_id = params["class_id"]
  	dept_id = params["dept_id"]
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

  	if( !term_id.blank? and !year.blank? and !section.blank? and !class_id.blank? and !dept_id.blank?)
  		class_add = Classmodel.new(Class_ID:class_id,Dept_ID:dept_id,Term_ID:term_id,Year:year,Teacher_User_ID:teacher_id,Section:section,CRN:crn,Syl_ID:syl_id,Day_ID:day_id,Day_Time:day_time,Day_Len:day_len,Lab_ID:lab_id,Lab_Time:lab_time,Lab_Len:lab_len)
      classes = Classmodel.find_by_sql("Select * from Class where Class_ID=33101")
      puts classes.to_json
  		class_add.save
  		render text: "Added Class"
  	else
  		render text: "Missing information"
  	end
  end
end
