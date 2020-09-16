class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :mens_apparel, inclusion: [true, false]
  validates :womens_apparel, inclusion: [true, false]

  validate :must_carry_at_least_one_apparel

  def must_carry_at_least_one_apparel
    if mens_apparel.present? == false && womens_apparel.present? == false
      errors.add(:must_carry_at_least_one_apparel, "Must carry at least one of the men's or women's apparel")
    end
  end
end
