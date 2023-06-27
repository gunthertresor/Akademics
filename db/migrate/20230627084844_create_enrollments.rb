class CreateEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :classe, null: false, foreign_key: true
      t.date :enrollment_date
      t.boolean :cancelled
      t.text :cancellation_reason

      t.timestamps
    end
  end
end
