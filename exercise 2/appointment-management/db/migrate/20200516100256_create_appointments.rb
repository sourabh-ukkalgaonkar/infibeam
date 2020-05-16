class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :docotor_id
      t.intger :patiend_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
