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
  p '---- classroom.rb ----------------------'
  p 'Make sure that when adding a student to a classroom'
  p 'it also sets the classroom for the student.'
  p 'ivan = Student.new(22, "ivan", false)'
  ivan = Student.new(22, 'ivan', false)
  p ivan.name
  p ivan.age
  p "ivan.parent_permission: #{ivan.parent_permission}"
  p 'ivan.classroom(al crear student):'
  p ivan.classroom

  pedro = Student.new(55, 'pedro', '')
  p pedro.name
  p pedro.age

  p 'math = Classroom.new("math")'
  p 'math.add_student(ivan)'
  math = Classroom.new('math')
  math.add_student(ivan)
  p 'ivan.classroom:'
  p ivan.classroom
  p 'ivan.classroom.label:'
  p ivan.classroom.label
  math.add_student(pedro)
  p 'pedro.classroom:'
  p pedro.classroom
  p 'math.students:'
  p math.students

  p 'literature = Classroom.new("literature")'
  literature = Classroom.new('literature')
  p 'ivan.classroom="literature"'
  p literature
  p 'ivan.classroom=literature'
  ivan.classroom = literature
  p 'ivan'
  p ivan
  p 'literature'
  p literature
  p '---- fin classroom.rb ----------------------'
end
