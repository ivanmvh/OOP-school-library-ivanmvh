# Class Person
class Person
  # getters
  attr_reader :id, :parent_permission
  attr_accessor :name, :age

  def intialize(age, name = 'Unknown', parent_permission: true)
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

  private

  def of_age?
    @age >= 18
  end
end

=begin
# test
ivan = Person.new(73, "Ivan Martinez",true)
puts ivan.age
puts ivan.name
ivan.parent_permission
=end
