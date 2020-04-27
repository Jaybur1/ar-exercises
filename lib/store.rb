class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { greater_than: 0}

  validate :apparels_validation

  private
  def apparels_validation
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:mens_apparel, "Have to specify true or false")
      errors.add(:womens_apparel, "Have to specify true or false")
    end
  end


end
