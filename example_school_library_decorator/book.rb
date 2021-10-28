class Book
  # rubocop:disable Style/ClassVars
  @@book_list = []
  # rubocop:enable Style/ClassVars

  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
    @@book_list << self
  end

  def self.list
    @@book_list.map do |book|
      "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def self.indexed_list
    list.map.with_index { |book, i| "#{i}) #{book}" }
  end

  def self.find(index = 0)
    @@book_list[index]
  end
end
