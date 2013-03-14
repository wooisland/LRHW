#this one is like your script like ARGV
def puts_two *args
	arg1,arg2 = args
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

#ok, that *args is actually pointless, we can just do this
def puts_two_again arg1, arg2
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

#this just takes one argument
def puts_one arg1
	puts "arg1 :#{arg1}"
end

#this one takes no argument
def puts_none
	puts "I have nothing"
end

puts_two "Anthony","Yaodi","Zhou"
puts_two_again "Anthony","Zhou"
puts_one "Anthony"
#There will be difference if use "puts_one 'Anthony'"
puts_none 
