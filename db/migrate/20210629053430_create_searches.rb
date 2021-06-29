class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :name
      t.string :nationality
      t.string :team
      t.string :dob
      t.string :sport
      t.string :birth_place
      t.text   :description
      t.timestamps
    end
  end
end
