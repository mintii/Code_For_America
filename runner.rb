require_relative 'violations_controller'
require_relative 'csv_parser'
require_relative 'view'
require_relative 'violation'

parsed_data = CSVParser.parse_violations("Violations-2012.csv")

run = ViolationsController.new(ARGV[0], parsed_data)
run.list_calculations