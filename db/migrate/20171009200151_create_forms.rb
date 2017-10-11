class CreateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :start_date
      t.date :end_date

      t.integer :user_id
      t.timestamps
    end

    create_table :forms do |t|
      t.string :title
      t.datetime :due_date

      t.integer :event_id
      t.timestamps
    end

    create_table :sections do |t|
      t.string :title

      t.integer :form_id
      t.timestamps
    end

    create_table :fields do |t|
      t.string :label
      t.string :name
      t.string :type
      t.string :options

      t.integer :section_id
      t.timestamps
    end

    create_table :form_responses do |t|
      t.integer :form_id
      t.integer :user_id
      t.timestamps
    end

    create_table :field_responses do |t|
      t.string :data
      t.string :type

      t.integer :form_response_id
      t.integer :user_id
      t.integer :field_id
      t.timestamps
    end
  end
end
