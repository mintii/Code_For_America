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
			Viewable.display_totals(categories)

		when "earliest"
			categories = {}
			parsed_data.each do |row|
				get_dates(row, categories)
			end

			categories.each_pair do |key,value|
				value.sort!
				value = value.first
				Viewable.earliest(key, value)
			end
			

		when "latest"
			categories = {}
			parsed_data.each do |row|
				get_dates(row, categories)
			end

			categories.each_pair do |key,value|
				value.sort!
				value = value.last
				puts "#{key} has the earliest date of #{value}"
			end

		else
			puts "Please choose 'total', 'earliest', or 'latest' for your preferred view."				
		end
	end 

private 

		def get_dates(row, categories)
			if row.violation_date != nil
				if categories.has_key?(row.violation_category)
					categories[row.violation_category] << row.violation_date
				elsif categories[row.violation_category] == nil
					categories[row.violation_category] = [row.violation_date]
				end
			end
		end

end