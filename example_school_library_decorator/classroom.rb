attr_accessor :students

class Classroom
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
end