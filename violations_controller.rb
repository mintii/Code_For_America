class ViolationsController
	attr_reader :user_input, :parsed_data

	def initialize(user_input, parsed_data)
		@user_input = user_input
		@parsed_data = parsed_data
	end


	def list_calculations
		case user_input
		when "total"
			categories = {}
			parsed_data.each do |row|
				if categories.has_key?(row.violation_category)
					categories[row.violation_category] += 1
				elsif categories[row.violation_category] == nil
					categories[row.violation_category] = 1
				end
			end
			categories
		when "earliest"
			
		when "latest"

		else
			puts "Please choose 'total', 'earliest', or 'latest' for your preferred view."				
		end
	end 
	
end