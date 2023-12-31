class AddFieldnameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
    add_column :users, :status, :string, default: 'student'
    add_column :users, :birth_date, :date
    add_column :users, :url_avatar, :string
    add_column :users, :profil, :text
  end
end
