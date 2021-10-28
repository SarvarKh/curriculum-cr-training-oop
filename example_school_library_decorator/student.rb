require './person'
class Student < Person
  def classroom=(student_classroom)
    student_classroom.students.push(self) unless student_classroom.students.include?(self)
  end
end
