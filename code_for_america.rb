require 'csv'

class Parking_violation
	def initialize(details)
		# @details = details
		@details = {
								:violation_id => details[:violation_id], 
								:inspection_id => details[:inspection_id], 
								:violation_category => details[:violation_category], 
								:violation_date => details[:violation_date_closed], 
								:violation_type => details[:violation_type]
								}
	end
end

parsed_array = []

parse_file = CSV.foreach("../Downloads/Violations-2012.csv", :headers => true, :header_converters => :symbol) do |row|
	parsed_array << Parking_violation.new(row)
end

p parsed_array[1]