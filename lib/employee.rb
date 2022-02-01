class Employee < ActiveRecord::Base
  belongs_to :store, validate: true
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :inclusion => 40..200 # hourly-rate must be b/w 40 and 200 inclusive
  
  before_create :set_password
  
  private
  def set_password
    self.password = (0...8).map { (65 + rand(26)).chr }.join # auto generate a random string of 8 characters long as password
  end
end
