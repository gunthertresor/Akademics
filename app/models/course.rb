class Course < ApplicationRecord
  belongs_to :user

  has_many :reviews, dependent: :destroy
  has_many :course_classes, foreign_key: 'course_id', class_name: 'Classe', dependent: :destroy
end
