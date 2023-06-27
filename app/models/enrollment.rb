class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :classe

  has_many :reviews, dependent: :destroy
end
