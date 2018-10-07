class Special < ActiveRecord::Base
  belongs_to :comedian

  validates_presence_of :name

  def self.average_run_time
    average(:run_time)
  end
  
end
