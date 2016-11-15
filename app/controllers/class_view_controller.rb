require 'json'
require 'net/http'
#require 'openssl'

class ClassViewController < ApplicationController
  def getClasses
#    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
#    url = URI.parse('https://www.googleapis.com/oauth2/v3/tokeninfo?access_token=1/fFBGRNJru1FQd44AzqT3Zg')
#    http = Net::HTTP.new(url.host, url.port)
#    http.use_ssl = true
#    req = Net::HTTP::Get.new(url.to_s)

#    req = Net::HTTP::Get.new(url.request_uri)
#    res = http.request(req)
#    puts res.body


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
			classes = classes.where("Dept_Title": infoHash["department"])
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