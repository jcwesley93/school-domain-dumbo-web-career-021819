# code here!

require 'pry'
class School
  
attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster.key?(grade)
        @roster[grade] << name
   else 
     @roster[grade] = []
        @roster[grade] << name
  end
  end
  
  def grade(grade)
    @roster[grade]
   
  end 
  
  def sort 
#the tests are asking for the keys to be sorted, and for the values of the array (the value to the key), to be sorted as well. ???

    @roster.sort_by { |grade, name| grade }
      grade.sort_by { |name| name }
    # @roster.each do |grade, names|
    #   names.sort
    end
  end 
  
  