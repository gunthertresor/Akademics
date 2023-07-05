class AddStartDateToClasses < ActiveRecord::Migration[7.0]
  def change
    add_column :classes, :start_date, :datetime
  end
end
