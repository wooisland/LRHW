ten_things = "Apple Oragnes Crows Telephone Light Sugar"

puts "Wait there's not 10 things in that list, let's fix that."

staff  = ten_things.split(' ')
more_staff = %w(Day Night Song Frisbee Corn Banana Girl Boy)


while staff.length != 10
	next_one = more_staff.pop
	puts "Adding: #{next_one}"
	staff.push next_one
	puts "There are #{staff.length} items now."
end

puts "Then we go: #{staff}"

puts "Let's do some things with stuff"

puts staff[1]
#The last one 
puts staff[-1] 
puts staff.pop
puts staff.join(' ')
puts staff.values_at(3,5).join('-')
puts staff.values_at(3..5).join('#')