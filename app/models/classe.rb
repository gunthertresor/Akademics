class Classe < ApplicationRecord
  # belongs_to :user
  belongs_to :course

  has_many :enrollments, dependent: :destroy
end
