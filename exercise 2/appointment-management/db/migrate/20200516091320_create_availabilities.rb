class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :doctor_id

      t.timestamps
    end
  end
end
