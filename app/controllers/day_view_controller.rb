class DayViewController < ApplicationController
  def day_view
    teacher = DayViewRb.find_by_sql("Select * from Class_Days")
  	response.headers['Content-Type'] = 'application/json'
  	render text: teacher.to_json
  end
end
