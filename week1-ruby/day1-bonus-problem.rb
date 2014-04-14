# Bonus problem: If you’re feeling the need for a little more,
# write a pro- gram that picks a random number. Let a player 
# guess the number, telling the player whether the guess is too 
# low or too high. (Hint: rand(10) will generate a random number 
# from 0 to 9, and gets will read a string from the keyboard 
# that you can translate to an integer.)

number = rand(10)
guess = -1

puts "Guess the number (0-9)"

until guess == number
        guess = (gets).to_i

        puts 'Too low!' if guess < number
        puts 'Too high!' if guess > number
end

puts "Congrats! #{guess} was the secret number!"

