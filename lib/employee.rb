class Employee < ActiveRecord::Base
  belongs_to :store

  # validation: must have first, last name
  validate :first_name, presence: true
  validate :last_name, presence: true

  # hourly rate should be a number between 40 and 200
  validate :hourly_rate, :inclusion => { :in => [40, 200]}

  # Employees must have a store
  validate :store, presence: true

end
