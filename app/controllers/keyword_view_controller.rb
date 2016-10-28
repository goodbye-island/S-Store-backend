class KeywordViewController < ApplicationController
  def KeywordView
  	keywords = Keyword.find_by_sql("Select * from Keywords")
  	response.headers['Content-Type'] = 'application/json'
  	render text: keywords.to_json
  end
end
