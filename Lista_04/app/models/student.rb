class Student < ApplicationRecord
  belongs_to :teacher

  validates :name, :registration, :email, :birth_date, :teacher, presence: true
  validates :registration, uniqueness: true
  validates :email, uniqueness: true
  validates_length_of :registration, is: 9
end
