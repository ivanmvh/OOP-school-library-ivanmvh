require './book'

# intermediate class `Rental - relationship between `Person` and `Book``
class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @person = person
    book.rentals << self # update pointer from book to rental
    person.rentals << self # update pointer from person to rental
  end
end
