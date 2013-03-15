input_file = ARGV.first

def print_all file
	puts file.read
end

def rewind file
	file.seek 0, IO::SEEK_SET
end

def print_a_line file,line_count
	puts "#{line_count}: #{file.readline}"
end

if !(File.exist? input_file) then
	puts "The file #{input_file} doesn't exist!"
	exit
end

file = File.open input_file

puts "Print all the content in the file"
print_all file

puts "Rewind to the start poistion of the file"
rewind file

current_possition = 1

puts "Print the each line in the file"
print_a_line file, current_possition

print_a_line file, current_possition+=1

print_a_line file, current_possition+=1



