class CreateTravel < ActiveRecord::Migration[5.1]
  def change
    create_table :travels do |t|
      t.datetime :arrival_time
      t.string :arrival_company
      t.string :arrival_number
      t.string :arrival_from

      t.datetime :departure_time
      t.string :departure_company
      t.string :departure_number
      t.string :departure_from

      t.string :travelling_with
      t.string :other_info
      t.integer :user_id
      t.timestamps
    end

    add_column :users, :ice_1_name, :string
    add_column :users, :ice_1_phone, :string

    add_column :users, :ice_2_name, :string
    add_column :users, :ice_2_phone, :string
  end
end
