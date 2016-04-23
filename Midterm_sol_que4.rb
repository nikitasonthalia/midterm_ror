class Troll
	attr_accessor :ugliness, :smelliness, :strength, :grunt
	def initialize
		@grunt="UNGAH"
	end
	def speak
		42.time do 
			puts @grunt
			
		end
	end
	def reverse
		puts @grunt.reverse
	end
	def self.propagate
		self.@grunt
	end
	def response_to?(str)
		strength==str
	end
		
end