cars = 100
spance_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_dirven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * spance_in_a_car
average_passenger_per_car = passengers /cars_driven

puts "There are #{cars} available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_dirven} emtpy cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put #{average_passenger_per_car} in each car."