class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :surname
      t.date :date_birthday
      t.string :city_birthday
      t.string :address
      t.date :start_work
      t.references :position, foreign_key: true
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
