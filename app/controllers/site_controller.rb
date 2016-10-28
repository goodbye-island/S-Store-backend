class SiteController < ApplicationController
  def index
  	return [200,{'Content-Type' => 'text/html'},["Hello"]]	
  end
end
