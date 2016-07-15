require 'csv'

module CsvParser

	def self.parse_violations(file)
		parsed_array = []
		CSV.foreach(file, :headers => true, :header_converters => :symbol ) do |row|
			parsed_array << Violation.new(row)
		end 
		parsed_array
	end
	
end