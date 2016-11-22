require 'json'
require 'net/http'

class ClassViewController < ApplicationController
  def getClasses
  	infoHash = Hash.new
  	infoHash["title"] = params["title"]
  	infoHash["course"] = params["course"]
  	infoHash["semester"] = params["semester"]
  	infoHash["department"] = params["department"]
  	infoHash["year"] = params["year"]
  	infoHash["teacher"] = params["teacher"]
  	infoHash["crn"] = params["CRN"]

  	if (infoHash["title"] == nil and 
  		infoHash["course"] == nil and 
  		infoHash["semester"] == nil and 
  		infoHash["department"] == nil and 
  		infoHash["year"] == nil and 
  		infoHash["teacher"] == nil and 
  		infoHash["crn"] == nil)

  		classes = ClassView.first(30)
  		response.headers['Content-Type'] = 'application/json'
  		render text: classes.to_json
  	else
  		classes = ClassView
  		if(infoHash["title"]!="" and infoHash["title"]!=nil)
  			classes = classes.where("Course_Title": infoHash["title"])
  		end
  		if(infoHash["course"]!="" and infoHash["course"]!=nil)
  			classes = classes.where("Class_ID": infoHash["course"])
  		end
  		if(infoHash["semester"]!="" and infoHash["semester"]!=nil)
		  	classes = classes.where("Term": infoHash["semester"])
  		end
  		if(infoHash["department"]!="" and infoHash["department"]!=nil)
			  classes = classes.where("Dept_ID": infoHash["department"])
  		end
    	if(infoHash["year"]!="" and infoHash["year"]!=nil)
  			classes = classes.where("Year": infoHash["year"])
  		end
  		if(infoHash["crn"]!="" and infoHash["crn"]!=nil)
  			classes = classes.where("CRN": infoHash["crn"])
  		end
  		response.headers['Content-Type'] = 'application/json'
  		render text: classes.to_json
  	end
  end
end