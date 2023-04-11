require_relative 'person'

class Student < Person
  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    self.classroom = classroom
  end

  attr_reader :classroom

  def classroom=(classroom)
    @classroom&.students&.delete(self)
    @classroom = classroom
    @classroom&.students&.push(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
