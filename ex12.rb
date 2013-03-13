require 'open-uri'

open("http://www.stanford.edu") do |f|
	f.each_line {|line| puts line}

	puts f.base_uri			#<URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/en/>
	puts f.content_type 	#'text/html'
	puts f.charset			#"iso-8859-1"
	puts f.content_encoding #[]
	puts f.last_modified	#
end