#toss a password version
version = 1.0
#version 1.0 wip notes
#- add symbols
#- check for user input length

#stretch version 1.1 goals
#- add levels of randoming such as changing order of word, number, symbol
#rather than shuffling them by character.

#cleaner validators
#validate if string consist of only letters
def only_letters(str)
  str[/[a-zA-Z]+/]  == str
end

#validate if string consist of only numbers
def only_digits(str)
  str[/[0-9]+/]  == str
end

#validate if string does not consist of any letters or digits.
def not_letters_or_digits(str)
  str[/[a-zA-Z0-9]+/]  != str
end

#introduction
puts "Hi!"
sleep 2
puts "Meet with Toss-a-Password v#{version}"
sleep 2
puts "A password generator that tosses passwords from"
sleep 1
puts " - words,"
sleep 1
puts " - numbers,"
sleep 1
puts " - symbols that you choose."
sleep 2
puts "Please wait."
sleep 1
puts "Loading"
sleep 1
puts "."
sleep 1
puts "."
sleep 1
puts "."
sleep 1
puts "Toss-a-Password is started."


#ask user to type a keyword error: min 3) (select your protein)
puts "Let's start with a word that you will remember."
sleep 1
puts "Please type a memoriable word that has at least 3 letters."
sleep 1
keyword = gets.chomp
keyword = keyword.strip
loop do
  if (only_letters(keyword) == true)  && (keyword.bytesize > 2)
    sleep 1
    puts "We are making sure that your password will have two UPPERCASE letters."
    sleep 1
    puts "It is on us ;)"
    sleep 1
    break
  elsif (only_letters(keyword) == true)  && (keyword.bytesize < 3)
    puts "Almost there, but #{keyword} is #{keyword.bytesize} letters."
    sleep 1
    puts "Please enter at least a three letter word."
    sleep 1
    puts "Example: america"
    keyword = gets.chomp
    keyword = keyword.strip
  elsif (only_letters(keyword) == false)  && (keyword.bytesize > 2)
    puts "Almost there, but #{keyword} is not a word."
    sleep 1
    puts "Please enter at least a three letter word."
    sleep 1
    puts "Example: america"
    keyword = gets.chomp
    keyword = keyword.strip
  else (only_letters(keyword) == false)  && (keyword.bytesize < 3)
    puts "Opps! #{keyword} is not a word, and it has #{keyword.bytesize} characters."
    sleep 1
    puts "Please enter at least a three letter word."
    sleep 1
    puts "Example: america"
    keyword = gets.chomp
    keyword = keyword.strip
  end
end
#make two random characters uppercase,
#https://www.ruby-forum.com/topic/121564
keyword = keyword.gsub(/./){|c| [c,c.upcase][rand(2)] }
keyword_array = keyword.to_s.split('')
#ask user to type for min 3 three numbers (side items)
sleep 1
puts "Nice! How about numbers? Can you give us a minimum three digit number?"
sleep 2
puts "It is more secure not to give a year such as 2017."
sleep 2
number = gets.chomp
number = number.strip
loop do
  if (only_digits(number) == true)  && (number.bytesize > 2)
    break
  elsif (only_digits(number) == true)  && (number.bytesize < 3)
    puts "Almost there, but #{number} is #{number.bytesize} digits."
    sleep 1
    puts "Please enter at least a three digit number."
    sleep 1
    puts "Example: 298"
    number = gets.chomp
    number = number.strip
  elsif (only_digits(number) == false)  && (keyword.bytesize > 2)
    puts "Almost there, but #{number} is not a number."
    sleep 1
    puts "Please enter at least a three digit number."
    sleep 1
    puts "Example: 298"
    number = gets.chomp
    number = number.strip
  else (only_digits(number) == false)  && (keyword.bytesize < 3)
    puts "Opps! #{number} is not a number, and it is #{number.bytesize} digit(s)."
    sleep 1
    puts "Please enter at least a three digit number."
    sleep 1
    puts "Example: 298"
    number = gets.chomp
    number = number.strip

  end
end
number = number.strip
number_array = number.to_s.split('')

#wip - ask user to select at least two symbols (sauce)
puts "Lastly, we need some symbols to make it more secure."
sleep 2
puts "Type at least two symbols without any spaces."
sleep 1
puts "Example: @!.;,"
symbol = gets.chomp
symbol = symbol.strip

loop do
  if (not_letters_or_digits(symbol) == true)  && (symbol.bytesize > 1)
    break
  elsif (not_letters_or_digits(symbol) == true)  && (symbol.bytesize < 2)
    puts "Almost there, but #{symbol} is #{symbol.bytesize} digit."
    sleep 1
    puts "Please enter at least two symbols without any spaces."
    sleep 1
    puts "Example: @!.;,"
    symbol = gets.chomp
    symbol = symbol.strip
  elsif (not_letters_or_digits(symbol) == false)  && (symbol.bytesize > 1)
    puts "Almost there, but #{symbol} is not a symbol."
    sleep 1
    puts "Please enter at least two symbols without any spaces."
    sleep 1
    puts "Example: @!.;,"
    symbol = gets.chomp
    symbol = symbol.strip
  else (not_letters_or_digits(symbol) == false)  && (symbol.bytesize < 2)
    puts "Opps! #{symbol} is not a symbol, and it is #{symbol.bytesize} digit."
    sleep 1
    puts "Please enter at least two symbols."
    sleep 1
    puts "Example: @!.;,"
    symbol = gets.chomp
    symbol = symbol.strip

  end
end
symbol = symbol.strip
symbol_array = symbol.to_s.split('')
#v1.1 - ask user how s/he much sauce (how random it is)
#v1.1 - puts "Lastly, before we toss your ingredients, we need to know how much should we toss?"
#v1.1 -sleep 2

#generate input
generatedpassword = []
generatedpassword = number_array + keyword_array + symbol_array
generatedpassword = generatedpassword.shuffle

puts "Please wait while we are tossing your password."
sleep 3
puts "."
sleep 2
puts ".."
sleep 2
puts "..."
sleep 1
puts "Well... Here is your new password: #{generatedpassword.join(' ')}"
sleep 2
puts "Don't like it? Press enter to generate a new one."
sleep 2
puts "Type exit to close."
newone = gets
loop do
  if newone == "exit\n"
    puts "Securely disconnecting you from cloud."
    sleep 1
    puts "You are now disconnected."
    sleep 1
    puts "Thanks for using! Goodbye!"
    break
  elsif newone == "\n"
    puts "Please wait while we are tossing you a new password."
    sleep 2
    puts "."
    sleep 2
    puts ".."
    sleep 2
    puts "..."
    sleep 1
    generatedpassword = generatedpassword.shuffle
    puts "Well... Here is your new password: #{generatedpassword.join(' ')}"
    sleep 1
    puts "Press enter to generate a new one or type any key to exit"
  else
    sleep 1
    puts "We don't know what that word means yet."
    sleep 1
    puts "Type exit to close or press enter to generate a new one."
  end
  newone = gets
end
#v1.1 puts "If you don't like it, we can try it one more time."

#v1.1 puts "Do you want us to try one more time?"

#regenerate input
#repeat
#exit
