class TermViewController < ApplicationController
  def term_view
  	terms = TermRb.find_by_sql("Select * from Term")
  	response.headers['Content-Type'] = 'application/json'
  	render text: terms.to_json
  end
end
