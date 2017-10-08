class CreateLegal < ActiveRecord::Migration[5.1]
  def change
    create_table :legals do |t|
      t.string :waiver_signature
      t.boolean :behavior_agreement

      t.integer :user_id
      t.timestamps
    end
  end
end
