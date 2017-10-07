class AddTimestampsToApplication < ActiveRecord::Migration[5.1]
  def change
    change_table :applications do |t|
      t.timestamps
    end
  end
end
