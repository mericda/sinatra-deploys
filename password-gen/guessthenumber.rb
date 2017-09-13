# guess the number v0.1
# version: basics

puts "Guess the Number"
puts "Ready..."
puts "Set."
puts "Go!"
# The object of the game is to guess the number.
# The program will begin by picking a random number between 1 and 10.
  # use rand
  # This will be stored in a variable.

#store in variable
secret = rand 1..9 # = number from 0.00-1.00

#counting rounds, starting by 0
    counter = 0

#check which round is itsay what to do in each
  while counter < 3 do

    # The program will then ask (using the command line) to guess the number
    puts "Guess a number between 1 and 10"


    # The player will enter a number (or maybe not # you might need to check for that!)
    guess = gets.chomp
    # convert the number to an integer.
    guess = guess.to_i
    # The program will check to see if the number matches.
    if guess == secret
  	# If it does, the player wins and they're congratulated
      puts "That's right! It was #{guess}!"
      break
    	# If it doesn't, they're offered another chance to guess the number
    else
      puts "Sorry, it is not."
    end

     if counter == 2 then
       # The program will allow the user up to 3 guesses.
    puts "You run out of attempts.The secret number was #{secret}."
    break
     end
      if counter == 1 then
        puts "You have one guess left. Try it again."
      else
        puts "You have two guesses left. Try it again."
    end
     counter = counter +1
    end
  # The program will loop until quit
