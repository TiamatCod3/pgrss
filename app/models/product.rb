class Product < ApplicationRecord
  #associations
  belongs_to :classification

  #validations
  validates :code, :description, :presentation, presence: true
  validates :code, length: { is: 9}
  validates :code, uniqueness: true
  validates :description, :presentation, length: {minimum: 5 }
  before_save :uppercase_fields

  def uppercase_fields
    self.description.upcase!
    self.presentation.upcase!
    self.concentration.upcase!
  end

end
