class Solution0
	def squared_sum(a,b)
		sum=a+b
		sqrsum=sum*sum
		sqrsum
	end
	def sort_array_plus_one(a)
		a.sort!
		
		i = 0
		num = a.length

		until i > num-1 do
   			a[i]= a[i].to_i+1
   			i +=1;
		end
		a
	end
	def combine_name(first_name,last_name)
		first_name+ " " +last_name
	end
end

s=Solution0.new

puts  "The sum and square of 2 + 4 is : " + s.squared_sum(2,4).to_s
a=[2,1,4,6,5,9]
puts "The sort array plus one of array =[2,1,4,6,5,9] is :" + s.sort_array_plus_one(a).to_s
puts "The combine name of nikita ,sonthalia is :" + s.combine_name("nikita","sonthalia")
