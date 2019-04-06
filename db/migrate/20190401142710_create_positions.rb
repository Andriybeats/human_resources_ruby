class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.string :name
      t.float :sallary
      t.integer :vacations_days

      t.timestamps
    end
  end
end
