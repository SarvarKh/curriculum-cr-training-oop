class Classroom
    attr_accessor :students
    
    def initialize(label)
        @label = label
        @students = []
    end


    def label
        @label
    end

    def label=(label)
        @label = label
    end

    private
    def add_students(student)
        @students << student
        student.classroom = self
    end
end