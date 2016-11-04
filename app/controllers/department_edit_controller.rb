class DepartmentEditController < ApplicationController
  def DepartmentEdit
  	if(!params["dept_id"].blank?)
	  	dept_id = params["dept_id"]
	  	dept = DeptView.where(Dept_ID: dept_id)

		dept_title = !params["dept_title"].blank? ? params["dept_title"] : dept[0].Dept_Title
		title_abb = !params["title_abb"].blank? ? params["title_abb"] : dept[0].Dept_Title_Abb

		DeptView.where(Dept_ID: dept_id).update_all(Dept_Title: dept_title, Dept_Title_Abb: title_abb)
		response.headers['Content-Type'] = 'application/json'
		render text: "Edited department Successfully"
  	else
  		render text: "No department found to match id " + params["dept_id"].to_s
  	end
  end
end
