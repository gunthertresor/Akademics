class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :courses, through: :classes
  has_many :courses
  has_many :reviews, through: :courses
  has_many :reviews
  has_many :enrollments

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, confirmation: true
end
