class AddEndDateToClasses < ActiveRecord::Migration[7.0]
  def change
    add_column :classes, :end_date, :datetime
  end
end
