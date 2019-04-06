class CreateVacations < ActiveRecord::Migration[5.2]
  def change
    create_table :vacations do |t|
      t.date :date_start
      t.date :date_end
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
