class Book
  @@list = []

  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
    @@list << self
  end

  def self.list
    @@list.map do |book| 
      "Title: #{book.title}, Author: #{book.author}"
    end
  end
end
