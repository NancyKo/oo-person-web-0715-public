# your code goes here
require 'pry'
class Person
attr_reader :name 
attr_accessor :bank_account, :happiness, :hygiene

	def initialize(name)
		@name = name 
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end 

	def happiness=(points)
		@happiness = points
		@happiness = 10 if @happiness > 10
		@happiness = 0  if @happiness < 0
	end

	# def hygiene
	# 	if @hygiene > 10
	# 		@hygiene = 10
	# 	elsif @hygiene < 0
	# 		@hygiene = 0
	# 	end
	# 	@hygiene
	# end

	def hygiene=(points)
		@hygiene = points
		@hygiene = 10 if @hygiene > 10
		@hygiene = 0 	if @hygiene < 0 
	end

	def happy?
		@happiness > 7 
	end

	def clean?
		@hygiene > 7
	end

	def get_paid(salary)
		@bank_account = @bank_account + salary
		"all about the benjamins"
	end

	def take_bath
		self.hygiene = @hygiene + 4
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.hygiene = @hygiene - 3
		self.happiness = @happiness + 2
		"♪ another one bites the dust ♫"
	end

	def call_friend(friend_instance)
		self.happiness = @happiness + 3
		friend_instance.happiness += 3
		"Hi #{friend_instance.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(friend_instance, topic)
		if topic == 'politics'
			self.happiness = @happiness - 2  
			friend_instance.happiness -= 2
			"blah blah partisan blah lobbyist"
		elsif topic == 'weather'
			self.happiness = @happiness + 1
			friend_instance.happiness += 1
			"blah blah sun blah rain"
		else
			"blah blah blah blah blah"
		end
	end
	
end