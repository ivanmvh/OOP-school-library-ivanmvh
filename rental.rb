require './book'

# intermediate class `Rental - relationship between `Person` and `Book``
class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @person = person
    book.rentals << self # many-to-many intermediate
    person.rentals << self # many-to-many intermediate
  end
end