class RemoveUserReferenceFromClasse < ActiveRecord::Migration[7.0]
  def change
    remove_reference :classes, :user, foreign_key: true
  end
end
