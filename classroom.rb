require './student'
class Classroom
  attr_reader :students
  attr_accessor :label

  def initialize(label)
    @label = label
    @students = [] # a classroom has many students
  end
  
  def add_student(student)
    # << is push
    @students << student # add the student to the classroom
    student.classroom = self # set the classroom for the student (classroom has many students)
  end
end

# test
if 1==0
  p "---- classroom.rb ----------------------"
  ivan = Student.new(22, "ivan", false)
  p ivan.name
  p ivan.age
  p "parent_permission: #{ivan.parent_permission}"

  pedro = Student.new(55, "pedro","")
  p pedro.name
  p pedro.age

  math = Classroom.new("math")
  math.add_student(ivan)
  p "ivan.classroom:"
  p ivan.classroom
  p "ivan.classroom.label:"
  p ivan.classroom.label
  math.add_student(pedro)
  p "pedro.classroom:"
  p pedro.classroom
  p "math.students:"
  p math.students
  p "---- fin classroom.rb ----------------------"
end