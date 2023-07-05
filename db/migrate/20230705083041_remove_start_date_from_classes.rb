class RemoveStartDateFromClasses < ActiveRecord::Migration[7.0]
  def change
    remove_column :classes, :start_date, :time
  end
end
