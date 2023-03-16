require './person'
require './classroom'

class Student < Person
  # getter
  attr_accessor :classroom # student belongs to classroom

  def initialize(*person, classroom)
    super(*person)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self) # belongs-to
  end

  # method to play_hooky
  def play_hooky
    '¯\(ツ)/¯'
  end
end
