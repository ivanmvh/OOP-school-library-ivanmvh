require './person'
require './classroom'

class Student < Person
  # getter
  attr_accessor :classroom # student belongs to classroom

  def initialize(*person, classroom)
    super(*person)
    classroom.students << self unless classroom.students.include?(self) # belongs-to
    @classroom = classroom.students << self
  end

  # method to play_hooky
  def play_hooky
    '¯\(ツ)/¯'
  end
end
