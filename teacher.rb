require './person'

# Class - Teacher
class Teacher < Person
  def initialize(*person, specialization)
    super(*person)
    @specialization = specialization
  end

  # Can_use_services always return true for teachers
  def can_use_services?
    true
  end

  # getter
  attr_accessor :specialization
end
