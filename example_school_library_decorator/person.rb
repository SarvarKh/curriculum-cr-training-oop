require './corrector'

class Person
  # rubocop:disable Style/ClassVars
  @@person_list = []
  # rubocop:enable Style/ClassVars

  attr_accessor :name, :age, :rentals
  attr_reader :id, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission = 'y')
    @id = Random.rand(1..1000)
    @corrector = Corrector.new
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
    @@person_list << self
  end

  def can_use_services?
    @parent_permission || of_age?
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end

  def self.list
    @@person_list.map do |person|
      "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def self.indexed_list
    list.map.with_index { |person, i| "#{i}) #{person}" }
  end

  def self.find(index = 0)
    @@person_list[index]
  end

  def self.list_rentals(id)
    @@person_list.select { |person| person.id == id }
  end

  private

  def of_age?
    @age >= 18
  end
end
