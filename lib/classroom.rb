require_relative 'student'

class Classroom
  def initialize(label)
    @label = label
    @students = []
  end

  attr_accessor :label
  attr_reader :students

  def add_student(student)
    return unless student.is_a?(Student)

    @students << student
    student.classroom = self
  end
end
