class CapstoneConnect < ActiveRecord::Base
	self.abstract_class = true
    establish_connection(:development)
end
