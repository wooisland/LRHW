module Ex25	
	def self.break_words(stuff)
		# This function will break up words for us.
		stuff.split(" ")
	end

	def self.sort_words words
		# Sorts the words
		words.sort
	end

	def self.print_first_word words
		puts words.first
	end

	def self.print_last_word words
		puts words.last
	end

	def self.sort_sentence(sort_sentence)
		words = break_words(sort_sentence)
		sort_words words
	end

	def self.print_first_and_last(sentence)
		words = break_words sentence
		print_first_word words
		print_last_word words
	end

	def self.print_first_and_last_sorted(sentence)
		words = sort_sentence sentence
		print_first_word words
		print_last_word words
	end
end

