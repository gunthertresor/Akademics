class Course < ApplicationRecord
  belongs_to :user
  has_many :classes, dependent: :destroy
end
