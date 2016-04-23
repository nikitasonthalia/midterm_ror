class Solution2
	def method1
  		x = 11
  		method2 do |x|
    		puts x
		end 
	end 
	def method2
  		x = 22
		yield 33 
	end 
	def method3
 		 x = 11
  		method2 do |y|
    		puts x
		end 
	end 
end

s=Solution2.new

puts " Output when method1 is called "  
s.method1
puts " Output when method3 is called" 
s.method3

