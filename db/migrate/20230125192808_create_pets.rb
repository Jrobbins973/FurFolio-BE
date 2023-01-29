class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :user_id
      t.string :name
      t.integer :age
      t.string :breed
      t.string :food
      t.string :motivation
      t.string :birthday
      t.string :medications
      t.string :vet_info

      t.timestamps
    end
  end
end
