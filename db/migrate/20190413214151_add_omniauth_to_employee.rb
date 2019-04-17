class AddOmniauthToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :provider, :string
    add_column :employees, :uid, :string
    #add_column :employees, :name, :string
    add_column :employees, :image, :text
  end
end
