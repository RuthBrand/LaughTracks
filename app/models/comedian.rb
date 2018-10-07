class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name, :city, :age

  def self.average_age
    average(:age)
  end
  
end
