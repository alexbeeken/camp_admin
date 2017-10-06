class CreateApplication < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :returning, :boolean, default: false

    create_table :applications do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address_1
      t.string :address_2
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.string :address_country
      t.string :phone
      t.string :gender
      t.string :parents
      t.date :birthdate
      t.string :voice_part
      t.string :lowest_note
      t.string :highest_note
      t.integer :ear_learning
      t.integer :read_music
      t.integer :independent_voice
      t.integer :independent_learning
      t.boolean :play_to_you
      t.boolean :like_to_move
      t.string :other_experience
      t.string :author_experience
      t.string :instrument_experience
      t.string :dietary_preferences
      t.string :dietary_restrictions
      t.string :allergies
      t.string :fitness_level
      t.boolean :no_smoking_confirm
      t.boolean :form_confirm
      t.boolean :tent_confirm
      t.string :returning_past_years
      t.string :returning_improvement_ideas
      t.string :new_why
      t.string :new_attitude
      t.string :new_inspiration
      t.string :new_other_skills
    end
  end
end
