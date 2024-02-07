require_relative "csv_reader"

reader = CsvReader.new

# ARGV variable to access the program's command line arguments.
ARGV.each do |csv_file_name|
  $stderr.puts "Processing #{csv_file_name}"
  reader.read_in_csv_data(csv_file_name)
end

puts "Total value = #{reader.total_value_in_stock}"