# frozen_string_literal: true

class Group
  include Enumerable
  attr_accessor :kolect

  def initialize
    @kolect = []
  end

  def <<(param)
    kolect << param
  end

  def each(&block)
    kolect.each(&block)
  end

  class User
    attr_accessor :name, :profesion

    def initialize(name:, profesion:)
      @name = name
      @profesion = profesion
    end
  end
end
t = Group.new
t << Group::User.new(
  name: 'Иванов Иван Иванович',
  profesion: 'Team Leader'
)

t << Group::User.new(
  name: 'Петров Петр Петрович',
  profesion: 'Backend Developer'
)

t << Group::User.new(
  name: 'Олегов Олег Олегович',
  profesion: 'Frontend Developer'
)

kolect = t.map { |u| "#{u.name} (#{u.profesion})" }
puts kolect
