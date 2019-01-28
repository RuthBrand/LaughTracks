class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name, :city, :age

  def initialize(name, city, age)
    require 'pry'; binding.pry
    @name = name
    @city = city
    @age = age
  end

  def self.average_age
    average(:age)
  end

  def self.unique_cities
    #this returns an array but it sort of works
    pluck(:city).uniq
  end

  def self.total_specials
    sum(:specials)
  end

end
