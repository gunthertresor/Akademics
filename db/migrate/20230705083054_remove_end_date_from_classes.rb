class RemoveEndDateFromClasses < ActiveRecord::Migration[7.0]
  def change
    remove_column :classes, :end_date, :time
  end
end
