# Your program should calculate the number of violations in each category, 
# and the earliest and latest violation date for each category. 
# You can use your preferred programming language, and decide on the presentation format of the resulting data.

#pass in argv and the arguments of what to 

require 'csv'

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

parsed_array = []

parse_file = CSV.foreach("Violations-2012.csv", :headers => true, :header_converters => :symbol) do |row|
	parsed_array << Violation.new(row)
end

p parsed_array