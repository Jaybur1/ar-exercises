class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0}

  validate :apparels_validation

  before_destroy :check_if_empty

  private
  def apparels_validation
    if !self.mens_apparel && !self.womens_apparel
      errors.add(:mens_apparel, "Have to set to true at least one apparel")
      errors.add(:womens_apparel, "Have to set to true at least one apparel")
    end
  end

  def check_if_empty
    if self.employees.size > 0 
      errors.add(:employees, "cannot destroy, the store not empty")
      throw :abort
    end
  end

end
