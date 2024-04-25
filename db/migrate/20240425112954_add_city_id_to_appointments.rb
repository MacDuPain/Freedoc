class AddCityIdToAppointments < ActiveRecord::Migration[7.1]
  def change
    add_column :appointments, :city_id, :integer
  end
end
