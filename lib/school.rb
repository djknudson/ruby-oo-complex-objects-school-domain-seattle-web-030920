# code here!
require 'pry'

class School
    attr_reader :name
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        @roster.each do |grade, students|
            # binding.pry
            @roster[grade] = students.sort
        end
    end
end