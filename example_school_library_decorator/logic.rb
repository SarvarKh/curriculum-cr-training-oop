require './person'
require './student'
require './teacher'
require './rental'
require './book'

class Logic
  attr_accessor :option

  def initialize(option)
    @option = option
  end

  # rubocop:disable Metrics
  def start
    case @option
    when 1
      puts Book.list
    when 2
      puts Person.list
    when 3
      print 'Do you want to create a student (1) or a teacher (2)? [Input the Number]: '
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

      if date.empty? || book.nil? || person.nil?
        (puts "You didn't enter any input. Please try again")
      else
        Rental.new(date, book, person)
      end
    when 6
      print 'ID of person: '
      id = gets.chomp.to_i

      if id.zero?
        (puts "You entered invalid ID.\nPlease check the ID of a person via option #2 and try again.")
      else
        (puts "Rentals:\n\n #{Person.list_rentals(id)}")
      end
    else
      exit!
    end

    puts ''
  end
  # rubocop:enable Metrics
end
