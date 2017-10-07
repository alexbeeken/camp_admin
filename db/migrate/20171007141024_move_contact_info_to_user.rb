class MoveContactInfoToUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :applications, :email, :string
    remove_column :applications, :first_name, :string
    remove_column :applications, :last_name, :string

    remove_column :applications, :address_1, :string
    add_column :users, :address_1, :string

    remove_column :applications, :address_2, :string
    add_column :users, :address_2, :string

    remove_column :applications, :address_city, :string
    add_column :users, :address_city, :string

    remove_column :applications, :address_country, :string
    add_column :users, :address_country, :string

    remove_column :applications, :address_zip, :string
    add_column :users, :address_zip, :string

    remove_column :applications, :gender, :string
    add_column :users, :gender, :string

    remove_column :applications, :parents, :string
    add_column :users, :parents, :string

    remove_column :applications, :birthdate, :date
    add_column :users, :birthdate, :date

    remove_column :applications, :voice_part, :string
    add_column :users, :voice_part, :string

    remove_column :applications, :lowest_note, :string
    add_column :users, :lowest_note, :string

    remove_column :applications, :highest_note, :string
    add_column :users, :highest_note, :string

    remove_column :applications, :ear_learning, :string
    add_column :users, :ear_learning, :string

    remove_column :applications, :read_music, :string
    add_column :users, :read_music, :string

    remove_column :applications, :independent_voice, :string
    add_column :users, :independent_voice, :string

    remove_column :applications, :independent_learning, :string
    add_column :users, :independent_learning, :string

    remove_column :applications, :play_to_you, :string
    add_column :users, :play_to_you, :string

    remove_column :applications, :like_to_move, :string
    add_column :users, :like_to_move, :string

    remove_column :applications, :other_experience, :string
    add_column :users, :other_experience, :string

    remove_column :applications, :author_experience, :string
    add_column :users, :author_experience, :string

    remove_column :applications, :instrument_experience, :string
    add_column :users, :instrument_experience, :string

    remove_column :applications, :address_state, :string
    add_column :users, :address_state, :string

    remove_column :applications, :phone, :string
    add_column :users, :phone, :string
  end
end
