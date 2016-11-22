require 'json'

class SyllabusAddController < ApplicationController
  def syllabus_add
	class_id = params["class_id"]
	dept_id = params["dept_id"]
	term_id = params["term_id"]
	year = params["year"]
	section = params["section"]

	if( !class_id.blank? and !dept_id.blank? and !term_id.blank? and !year.blank? and !section.blank?)
		syllabus = SyllabusRb.new(Syllabus: params["file"].read)
		syllabus.save
		class_change = Classmodel.where(Class_ID: class_id, Dept_ID: dept_id, Term_ID: term_id, Year: year, Section: section).update_all(Syl_ID: syllabus["Syl_ID"])

		render text: "Added syllabus to class"
	else
		render text: "Missing class information"
	end
  end
end
