class CreateEvent < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.string :location

      t.integer :user_id
      t.timestamps
    end
  end
end
