module Viewable
	
	def self.display_totals(categories = {})
		categories.each_pair do |category, count| 
			puts "#{category} has a total of #{count} violations."
		end
	end

	def self.earliest(key, value)
		puts "#{key} has the earliest date of #{value}."
	end

	def self.latest(key, value)
		puts "#{key} has the latest date of #{value}."
	end
end