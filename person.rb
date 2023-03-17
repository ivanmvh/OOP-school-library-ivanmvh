require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'
require './rental'

# Class Person
class Person < Nameable
  # getters
  attr_reader :id, :rentals
  attr_accessor :name, :age, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..2000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  # Methods
  # Public
  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    @rentals.push(Rental.new(date, book, self))
  end

  private

  def of_age?
    @age >= 18
  end
end

# test
test_sw = false
if test_sw
  # Sentences to see the code in action
  p '---- inicio person.rb ----------------------'
  person = Person.new(22, 'maximilianus')
  p "correct_name: #{person.correct_name}"
  p "age: #{person.age}"
  p "parent_permission: #{person.parent_permission}"
  person.parent_permission = false
  p "parent_permission: #{person.parent_permission}"
  capitalizedperson = CapitalizeDecorator.new(person)
  p "capitalizedperson.correct_name: #{capitalizedperson.correct_name}"
  p capitalizedtrimmedperson = TrimmerDecorator.new(capitalizedperson)
  p "capitalizedtrimmedperson.correct_name: #{capitalizedtrimmedperson.correct_name}"
  p '---- fin person.rb ----------------------'
end
