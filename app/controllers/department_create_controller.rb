class DepartmentCreateController < ApplicationController
  def DepartmentCreate
  	if(params["Title_Abb"]!="" and params["Title_Abb"]!=nil)
  		newDept = DeptView.new(Dept_Title: params["Dept_Title"], Dept_Title_Abb: params["Title_Abb"])
  		newDept.save
  		render text: "Successful insert"
  	else
		newDept = DeptView.new(Dept_Title: params["Dept_Title"])
		newDept.save
		render text: "Successful insert"
  	end
  end
end
