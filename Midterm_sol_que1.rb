#---------
# name: NumberGuess.rb
#
#----------------

class Screen

 def cls
   puts ("\n" * 30)
   puts "\a"
 end

 def pause
    STDIN.gets
 end

end

class Game
	attr_accessor :totalgame, :guess
	def initialize
		# Solution of question 1 by adding to instance variable
		@totalgame=0
		@guess=0
	end
	
	def display_greeting
		Console_Screen.cls
		print "\t\t Welcome to the Ruby Number Guessing Game!" +
		"\n\n\n\n\n\n\n\n\n\n\n\n\ Press Enter to " + 
		"continue."

		Console_Screen.pause
	end

	def display_instruction
		Console_Screen.cls
		puts "Instruction:\n\n"

		puts "This game randomly generates a number from 1 to 100 and "
		puts "challaenges you to identify it in as few guesses and possible "
	end

	def generate_number
		return randomNo = 1 + rand(1000)	# Solution of question 2 by increaing the range 

	end

	def play_game
		@totalgame+=1
		number = generate_number
		puts " The number is " + number.to_s   # Solution of question 5 the cheat sheet of  ramdam number
		tmpno=0		# Solution of question 4 the no which keep the track of guesses

		loop do
			Console_Screen.cls
			print "\nEnter your guess and press the enter key: "
			@guess+=1
			reply = STDIN.gets
			reply.chop!
			reply = reply.to_i
			tmpno+=1

			# if reply < 1 or reply > 1000 then
			# 	puts "Your guess is negative or more than 1000. Please Enter between 1 to 1000.Press Enter to continue."
			# 	Console_Screen.pause
			# 	redo # redo the ciurrent iteration of the loop
			# end
			if tmpno == 10 then		# Solution of question 4 check if guess id equal to 10 and than declare lost and exit loop
				print "you lost you have done 10 guesses! Press Enter to continue."
				Console_Screen.pause
				break
			end

			if reply == number  then
				Console_Screen.cls
				print "You have guessed the number! Press Enter to continue."
				Console_Screen.pause
				break
			elsif reply.to_s.match(/\D/) then		# Solution of question 3 by adding the if condition to check weather the enter no is any specail character
				Console_Screen.cls
				print "Your guess is not a valid reply. Please enter digit between 1-1000! Press enter to continue."
				Console_Screen.pause
			elsif reply < 1 or reply > 1000 then	# Solution of question 3
				puts "Your guess is negative or more than 1000. Please Enter between 1 to 1000.Press Enter to continue."
			 	Console_Screen.pause
			elsif reply < number then
				Console_Screen.cls
				print "Your guess is too low! Press enter to continue."
				Console_Screen.pause

			elsif reply > number then
				Console_Screen.cls
				print "Your guess is too high! Press enter to continue."
				Console_Screen.pause
			end

		end
			
	end

	def display_credits
		Console_Screen.cls
		puts "\t\t\Thanks you for playing the number game!!"
	end

	$noRight = 0

	Console_Screen = Screen.new

	SQ = Game.new

	SQ.display_greeting

	answer = ""

	loop do
		Console_Screen.cls

		print "Are you ready to play the Ruby Number Guessing Game? (y/n): "

		answer = STDIN.gets

		answer.chop!

		break if answer == "y" || answer == "n"
	end

	if answer == "n"

		Console_Screen.cls

		puts "Perhaps anoher time.\n\n"

	else
		SQ.display_instruction

		loop do
			SQ.play_game

			Console_Screen.cls
			puts " Total no of Game is "+ SQ.totalgame.to_s  # Solution of question 1
			puts " Total no of guess is "+ SQ.guess.to_s	 # Solution of question 1
			avg=SQ.guess.to_i/SQ.totalgame.to_i				# Solution of question 1
			puts " Average of gusee per game is " + avg.to_s	# Solution of question 1

			print "Would you like to play again? (y/n): "

			playAgain = STDIN.gets
			playAgain.chop!

			break if playAgain == "n"
		end

		SQ.display_credits

	end

end


