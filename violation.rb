require 'date'

class Violation
	attr_reader :violation_id, :inspection_id, :violation_category, :violation_type
	
	def initialize(details)
		@violation_id = details[:violation_id], 
		@inspection_id = details[:inspection_id], 
		@violation_category = details[:violation_category], 
		@violation_date = details[:violation_date], 
		@violation_type = details[:violation_type]			
	end

	def violation_date 
		parsed_date_time = DateTime.parse(@violation_date)
		parsed_date_time.strftime("%B %d, %Y")
	end
end