class KeywordMakeController < ApplicationController
  def KeywordMake
  	#TODO - verify class exists
  	if(not params["Class_ID"].blank? and not params["Keyword"].blank?)
  		newKeyword = Keyword.new(Class_ID: params["Class_ID"], Keyword: params["Keyword"])
  		newKeyword.save
  		render text: "Successful insert"
  	else
  		render text: "Missing INFO"
  	end
  end
end
