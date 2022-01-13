class Employee < ActiveRecord::Base
  belongs_to :store, validate: true

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :inclusion => 40..200
end
