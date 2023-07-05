class RemoveClassDateFromClasses < ActiveRecord::Migration[7.0]
  def change
    remove_column :classes, :class_date, :date
  end
end
