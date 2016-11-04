class UnknownRouteController < ApplicationController
  def UnknownRoute
  	render file: "#{Rails.root}/public/404.html" , status: 404
  end
end
