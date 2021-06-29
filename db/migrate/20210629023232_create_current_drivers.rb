class CreateCurrentDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :current_drivers do |t|
      t.string :name
      t.string :team

      t.timestamps
    end
  end
end
