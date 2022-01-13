class Store < ActiveRecord::Base
  has_many :employees
  # scope :old, -> { where('annual_revenue < ?', 430000 )}
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :stores_must_carry_at_least_one_of_mens_or_womens_apparel

  def stores_must_carry_at_least_one_of_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:a_store, "must carry at least one of men's or women's apparel") #will print as  "A store must carry at least one of men's or women's apparel"
    end
  end
end
