require './logic'

loop do
  puts 'Welcome to School Library App!'

  puts 'Please choose an option by entering a number:'
  puts '1 - List all Books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'

  option = gets.chomp.to_i
  logic = Logic.new(option)
  logic.start
end
