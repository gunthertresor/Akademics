class RemoveEnrollmentFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reviews, :enrollment, null: false, foreign_key: true
  end
end
