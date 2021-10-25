class Classroom

  def initialize(label)
    @label = label
    @students = []
  end

  private

  def add_students(student)
    @students << student
    student.classroom = self
  end
end
