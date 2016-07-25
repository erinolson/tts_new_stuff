pick = ["rock", "paper", "scissors"]

puts "Welcome to Roshambo"
draws = wins = losses = 0


until wins == 5
  begin
    puts "------>Please enter rock, paper, or scissors"
    human_choice = gets.chomp.downcase
  end until pick.include?(human_choice)

  computer_choice = rand(3)

  puts "You chose #{human_choice}, computer choose #{pick[computer_choice]}"

  if human_choice == pick[computer_choice]
     puts "draw"
     puts "Yall picked the same! No one wins!"
     draws += 1
  
    elsif pick[computer_choice] == "rock" && human_choice == "scissors"
        puts "Player chose scissors. Computer chose rock."
        puts "Rock beats scissors, Computer wins the round"
        losses += 1

    elsif pick[computer_choice] == "scissors" && human_choice == "paper"
        puts "Player chose paper. Computer chose scissors."
        puts "Scissors beats paper, Computer wins the round"
        losses += 1

    elsif pick[computer_choice] == "paper" && human_choice == "rock"
        puts "Player chose rock. Computer chose paper."
        puts "Paper beats rock, Computer wins the round"
        losses += 1
  
    elsif human_choice == "rock" && pick[computer_choice] == "scissors"
        puts "Player chose rock. Computer chose scissors."
        puts "Rock beats scissors, player wins the round."
        wins += 1

    elsif human_choice == "scissors" && pick[computer_choice] == "paper"
        puts "Player chose scissors. Computer chose paper."
        puts "Scissors beat paper, player wins the round."
        wins += 1

    elsif human_choice == "paper" && pick[computer_choice] == "rock"
        puts "Player chose paper. Computer chose rock"
        puts "Paper beats rock, player wins the round."
        wins += 1
  end

end

puts "wins:#{wins}\nlosses:#{losses}\ndraw:#{draws}"
if wins > losses
    puts "You won the game!"
  elsif wins < losses
    puts "You lost!"
  else
    puts "The game is a draw!"
end