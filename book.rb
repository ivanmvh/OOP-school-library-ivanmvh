class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = [] # a book has many rentals
  end

  def add_rental(date)
    rentals.push(date, self) # a book has many rentals
  end
end

