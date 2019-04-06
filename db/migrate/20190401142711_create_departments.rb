class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end
end
