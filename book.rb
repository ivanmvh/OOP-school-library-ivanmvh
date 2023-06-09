require './rental'

class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = [] # a book has many rentals
  end

  def add_rental(date, person)
    @rentals.push(Rental.new(date, self, person))
  end
end
