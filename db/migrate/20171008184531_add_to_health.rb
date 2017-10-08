class AddToHealth < ActiveRecord::Migration[5.1]
  def change
    add_column :healths, :medical_history, :text
    add_column :healths, :injuries, :text
    add_column :healths, :tetanus_booster, :date
    add_column :healths, :insurance_provider, :text
    add_column :healths, :plan_number, :text
    add_column :healths, :responsible_party, :text
  end
end
