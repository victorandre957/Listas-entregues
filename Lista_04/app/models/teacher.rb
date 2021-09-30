class Teacher < ApplicationRecord
    has_one :subject
    has_many :students

    validates :name, :email, :birth_date, presence: true
    validates :email, uniqueness: true
end
