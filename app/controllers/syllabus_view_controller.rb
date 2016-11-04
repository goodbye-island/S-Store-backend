class SyllabusViewController < ApplicationController
  def SyllabusView
  	syllabus = SyllabusRb.where(Syl_ID:params["SyllaID"])
  	response.headers['Content-Type'] = 'application/pdf'
  	render text: syllabus[0]["Syllabus"]
  end
end
