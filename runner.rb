# Your program should calculate the number of violations in each category, 
# and the earliest and latest violation date for each category. 
# You can use your preferred programming language, and decide on the presentation format of the resulting data.

#pass in argv and the arguments of what to 

require_relative 'violations_controller'
require_relative 'csv_parser'
require_relative 'view'
require_relative 'violation'

parsed_data = CsvParser.parse_violations("Violations-2012.csv")

run = ViolationsController.new(ARGV[0], parsed_data)
run.list_calculations