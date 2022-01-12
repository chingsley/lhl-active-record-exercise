class Store < ActiveRecord::Base
  has_many :employees
  # scope :old, -> { where('annual_revenue < ?', 430000 )}
end
