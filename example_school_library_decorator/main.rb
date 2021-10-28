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


    puts "Seu número é 1"
  when 2


    puts "Seu número está entre 2 e 10"
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
      student = Student.new(age, name, parent_permission)

      puts student.name
      puts student.age
      puts student.parent_permission
    else
      print 'Specialization: '
      specialization = gets.chomp
      Teacher.new(age, specialization, name)
    end
  when 4


    puts "é uma String"
  when 5


    puts 'a'
  when 6


    puts 'a'
  else
    exit!
  end

end