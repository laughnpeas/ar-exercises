class Store < ActiveRecord::Base
  has_many :employees

  # stores must have a name: min 3 char
  validate :name, length: {minimum: 3}
  # stores have an annual revenue: number, more than 0
  validate :annual_revenue, numericality: { only_integer: true, greater_or_equal_to: 0}

end

