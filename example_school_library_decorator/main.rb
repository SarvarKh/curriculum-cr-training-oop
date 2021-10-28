require './person.rb'
require './student.rb'
require './teacher.rb'
require './rental.rb'
require './book.rb'

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

  case option
  when 1
    puts Book.list
  when 2
    puts Person.list
  when 3
    print "Do you want to create a student (1) or a teacher (2)? [Input the Number]: "
    gets person_type = gets.chomp.to_i

    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    if person_type == 1
      print 'Has parent permission? [Y/N]: '
      parent_permission = gets.chomp
      Student.new(age, name, parent_permission)
    else
      print 'Specialization: '
      specialization = gets.chomp
      Teacher.new(age, specialization, name)
    end
  when 4
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    Book.new(title, author)
  when 5
    puts 'Select a Book from the following list by number'
    puts Book.indexed_list
    book_array_id = gets.chomp.to_i

    puts ''
    puts 'Select a Person from the following list by number (not ID)'
    puts Person.indexed_list
    person_array_id = gets.chomp.to_i

    puts ''
    print 'Date: '
    date = gets.chomp

    book = Book.find(book_array_id)
    person = Person.find(person_array_id)

    Rental.new(date, book, person)
  when 6


    puts 'a'
  else
    exit!
  end

  puts ''

end