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

  def self.indexed_list
    list.map.with_index { |book, i| "#{i}) #{book}" }
  end

  def self.find(index = 0)
    @@list[index]
  end
end
