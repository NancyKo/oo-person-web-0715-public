# your code goes here

class Person
attr_reader :name 
attr_accessor :bank_account, :happiness, :hygiene

	def initialize(name)
		@name = name 
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end 

	def happiness
		if @happiness > 10
			@happiness = 10
		elsif @happiness < 0
			@happiness = 0
		end
		@happiness
	end

	# def happiness
	# 	@happiness
	# end

	# def hygiene 
	# 	@hygiene
	# end
	def hygiene
		if @hygiene > 10
			@hygiene = 10
		elsif @hygiene < 0
			@hygiene = 0
		end
		@hygiene
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
		@hygiene = @hygiene + 4
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end
end