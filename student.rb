require './person'

class Student < Person
  def initialize(*person, classroom)
    super(*person)
    @classroom = classroom
  end

  # method to play_hooky
  def play_hooky
    '¯\(ツ)/¯'
  end

  # getter
  attr_accessor :classroom
end
