def game_with_max_trial
  secret = rand 25
  max_trial = 3
  found = false

  puts "Guess a number between 0 and 24"
  print_message = "Your guess: "

  max_trial.times do |i|
    print print_message
    user_answer = gets.chomp.to_i

    if user_answer > secret
      print_message = "Try lower: "
    elsif user_answer < secret
      print_message = "Try higher: "
    else
      found = true
      break
    end
  end


  if found
    puts "Yay, you got it right!"
  else
    puts ":-("
    puts "The number was #{secret}"
  end
end

def game
  secret = rand 25
  puts "Guess a number between 0 and 24"

  loop do
    print "Your guess: "
    user_answer = gets.chomp.to_i

    if user_answer > secret
      puts "Try lower"
    elsif user_answer < secret
      puts "Try higher"
    else
      puts "Yay, you got it right!"
      break
    end
  end
end

game
