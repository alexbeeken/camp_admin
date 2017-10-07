class CreateHealth < ActiveRecord::Migration[5.1]
  def change
    create_table :healths do |t|
      t.string :dietary_preferences
      t.string :dietary_restrictions
      t.string :allergies
      t.string :fitness_level
      t.integer :user_id
      t.timestamps
    end

    remove_column :applications, :dietary_restrictions, :string
    remove_column :applications, :dietary_preferences, :string
    remove_column :applications, :allergies, :string
    remove_column :applications, :fitness_level, :string
  end
end
