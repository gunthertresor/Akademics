class Course < ApplicationRecord
  belongs_to :user

#   has_many :classes
  has_many :course_classes, foreign_key: 'course_id', class_name: 'Classe'
end
