# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


lines = File.new('app/assets/docs/storedb.csv').readlines
puts "Read #{lines.count} lines #{lines}"

header = lines.shift.strip
keys = header.split(',')
lines.each do |line|
  puts "Importing #{line}"
  values = line.strip.split(',')
  attributes = Hash[keys.zip values]
  Store.create(attributes)
end

lines = File.new('app/assets/docs/styledb.csv').readlines
puts "Read #{lines.count} lines #{lines}"

header = lines.shift.strip
keys = header.split(',')
lines.each do |line|

  puts "Importing #{line}"
  values = line.strip.split(',')
  attributes = Hash[keys.zip values]
  store_name = attributes.delete("name")

  # <-- attributes = {sex: "female", style: "grunge"}
  # binding.pry
  
  style = Style.find_by(style: attributes["style"], sex: attributes["sex"])
  if style.nil?
    style = Style.create!(attributes)
  end

  store = Store.find_by(name: store_name)
  StoreStyle.create({store_id: store.id, style_id: style.id})


  #require 'pry-byebug'
  #binding.pry
  
  # Try to find the style
  #Style.find_by(sex: sex, style: style)

  # TODO: If the style does not exist, create it

  #if style.nil?
  # style = Style.create(attributes)

  # Find store by name
  #store = Store.find_by(name: store_name)
  # Store.find_by(:name => store_name)
  # store = Store.find_by name: 

  # Create a new StoreStyle
  # ...
  #StoreStyle.create({
    #store_id: store.id,
    #style_id: style.id
  #})

end
