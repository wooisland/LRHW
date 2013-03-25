module MyStaff
	def MyStaff.apple
		puts 'I AM APPLES!'
	end

	def self.apple
		puts "I AM SELF APPLES!"
	end

#This method can't be invoke from module outside
	def apple
		puts 'I AM APPLE with nothing!'
	end
end

class Song
	def initialize lyrics
		@lyrics = lyrics
	end

	def sing_me_a_song 
		for line in @lyrics
			puts line
		end
	end
end

happy_bday = Song.new(["Happy birthday to you",
				"I don't want to get sued",
				"So I'll stop right there"])

bulles_on_parada = Song.new(["They rally around the faimily",
				"With pockets full of shells"])


MyStaff.apple

happy_bday.sing_me_a_song

bulles_on_parada.sing_me_a_song
