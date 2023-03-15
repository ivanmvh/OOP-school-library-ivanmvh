require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'

# Class Person
class Person < Nameable
  # getters
  attr_reader :id, :parent_permission
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # Methods
  # Public
  def can_use_services?
    is_of_age? || @parent_permission
  end

  def correct_name
    @name
  end
  
  private

  def of_age?
    @age >= 18
  end
end

# Sentences to see the code in action
person = Person.new(22, 'maximilianus')
p "correct_name: #{person.correct_name}"
p "age: #{person.age}"
p "parent_permission: #{person.parent_permission}"
capitalizedperson = CapitalizeDecorator.new(person)
p "capitalizedperson.correct_name: #{capitalizedperson.correct_name}"
p capitalizedtrimmedperson = TrimmerDecorator.new(capitalizedperson)
p "capitalizedtrimmedperson.correct_name: #{capitalizedtrimmedperson.correct_name}"