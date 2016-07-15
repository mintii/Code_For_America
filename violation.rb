class Violation
	attr_reader :details
	
	def initialize(details)
		@details = {
								:violation_id => details[:violation_id], 
								:inspection_id => details[:inspection_id], 
								:violation_category => details[:violation_category], 
								:violation_date => details[:violation_date_closed], 
								:violation_type => details[:violation_type]
								}
	end


end