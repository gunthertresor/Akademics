class AddRatingToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :rating, :integer
  end
end
