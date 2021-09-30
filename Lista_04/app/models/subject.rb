class Subject < ApplicationRecord
  belongs_to :teacher
  
  validates :name, :teacher, presence: true
end
