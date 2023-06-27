class CreateClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :classes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.string :name
      t.date :class_date
      t.time :start_date
      t.time :end_date
      t.integer :max_people

      t.timestamps
    end
  end
end
