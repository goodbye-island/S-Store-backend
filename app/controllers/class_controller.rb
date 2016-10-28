class ClassController < ApplicationController
  def receive
  	puts '@@@@@@@@@@@@@@@@@@@@@'
  	class_name=params[:class_name]
  	puts params
  	puts '@@@@@@@@@@@@@@@@@@@@@'
  	render text: "Hello "
  	return [200,{'Content-Type' => 'text/html'},["Hello"]]
  end

  def retrieve
  	render text: "Hello "
  end
end
