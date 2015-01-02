# Rock, paper, scissors
possible_choices = ["P", "R", "S"]

puts "Play Paper Rock Scissors!"

while true
  while true
    puts "Choose one: (P/R/S)"
    player_selected = gets.chomp.upcase
    break if possible_choices.include? player_selected
  end

  computer_selected = possible_choices.sample # sample selects random value from array

  if computer_selected == player_selected
    puts "It's a tie!"
  elsif player_selected == "P" && computer_selected == "S"
    puts "You picked Paper and computer picked Scissors."
    puts "Scissors cut through paper."
    puts "Computer wins!"
  elsif player_selected == "S" && computer_selected == "R"
    puts "You picked Scissors and computer picked Rock."
    puts "Rock destroys Scissors."
    puts "Computer wins!"
  elsif player_selected == "R" && computer_selected == "P"
    puts "You picked Rock and computer picked Paper."
    puts "Paper wraps Rock."
    puts "Computer wins!"
  elsif player_selected == "P" && computer_selected == "R"
    puts "You picked Paper and computer picked Rock."
    puts "Paper wraps Rock."
    puts "Player wins!"
  elsif player_selected == "S" && computer_selected == "P"
    puts "You picked Scissors and computer picked Paper."
    puts "Scissors cut through paper."
    puts "Player wins!"
  elsif player_selected == "R" && computer_selected == "S"
    puts "You picked Rock and computer picked Scissors."
    puts "Rock destroys Scissors."
    puts "Player wins!"
  end

  puts "Play again? (Y/N)"
  response = gets.chomp.upcase
  break if response == "N"
end