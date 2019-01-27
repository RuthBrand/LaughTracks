class Comedian < ActiveRecord::Base
  attr_reader :name,
              :age,
              :city

  def initialize(name, age, city)
    @name = name
    @age = age
    @city = city
  end

end
