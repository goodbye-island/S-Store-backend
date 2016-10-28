class DepartmentMakeController < ApplicationController
  def DepartmentMake
  	if(params["Title_Abb"]!="" and params["Title_Abb"]!=nil)
  		newDept = DeptView.new(Dept_Title: params["Dept_Title"], Dept_Title_Abb: params["Title_Abb"])
  		newDept.save
  		render text: "Successful insert"
  	elsif params["Dept_Abb"]!="" and params["Dept_Abb"]!=nil
		DeptView.new(Dept_Title: params["Dept_Title"], Title_Abb: params["Title_Abb"])
		newDept.save
		render text: "Successful insert"
  	else
  		render text: "Missing Department Title"
  	end
  end
end
