attr_accessor :title, :author, :rentals

class Book
    def initialize(title, author)
        @title = title
        @author = author
        @rentals = []
    end
end