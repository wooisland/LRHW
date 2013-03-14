source,target = ARGV
script = $0

puts "Copying from #{source} to #{target} "

if !(File.exists? source) 
	puts "The file #{source} doesn't exist!"
	exit
end

puts "Does the output file exist? #{File.exist? target}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets
# if File.exist? target 
# 	puts "The file #{target} already exist, do you want to override?(Y/N)"
# 	print ">"
# 	option = STDIN.gets.chomp

# 	if option == 'N' or option == 'n' 
# 		exit
# 	end
# end

iStream = File.open source
oStream = File.open target,'w'

content = iStream.read
oStream.write content

iStream.close
oStream.close

	



