states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'California' => 'CA',
	'New York' => 'NY',
	'Michigan' => 'MI'
}

cities = {
	'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => "Jacksonville"
}

#Add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

#puts out some cities
puts '-'*10
puts 'NY State has:',cities['NY']
puts 'OR State has:',cities['OR']

#puts some states
puts '-'*10
puts "Michigan's abbreviation is:", states['Michigan']
puts "Florida's abbreviation is:",states['Florida']

#do it by using state then cities dict
puts '-'*10
puts "Michigan has:",cities[states['Michigan']]
puts "Florida has:",cities[states['Florida']]

#puts every state abbreviation
puts '-'*10
for state,abbrev in states
	puts "%s is abbreviated %s" %[state, abbrev]
end

puts '-'*10

for state,abbrev in states
	puts "%s is abbreviated %s, and has cities %s" %[state,abbrev,cities[abbrev]]
end 

puts '-' * 10
#if it's not there you get nil
state = states['Texas']

if not state
	puts "Sorry, no Texas."
end 

#get a city with a default value
city = cities['TX'] || 'Does not exists'
puts "The city for the state 'TX' is : %s" % city