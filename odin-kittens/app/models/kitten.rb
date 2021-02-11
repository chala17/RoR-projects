class Kitten < ApplicationRecord
  validates :name, :softness, :cuteness, :age, presence: true
  validates :cuteness, :softness, :age, numericality: true
  validates :cuteness, :softness, :inclusion => {:in => 1..10, :message => "Value should be between 1 and 10"} 
end
