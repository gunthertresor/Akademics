class AddUrlToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :url_course, :string
  end
end
