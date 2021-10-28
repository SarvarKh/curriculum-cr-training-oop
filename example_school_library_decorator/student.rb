require './person'
class Student < Person
  attr_accessor :classroom

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
