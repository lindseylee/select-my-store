desc "Imports a CSV file into an ActiveRecord table"

task :csv_model_import, [:filename, :model] => :environment do |task,args| 
  p task 
  p args
  lines = File.new(args[:filename]).readlines
  puts "Read #{lines.count} lines #{lines}"
  header = lines.shift.strip
  keys = header.split(',')
  lines.each do |line|
    puts "Importing #{line}"
    values = line.strip.split(',')
    attributes = Hash[keys.zip values]
    Module.const_get(args[:model]).create(attributes)
  end
end