class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.date :date
      t.integer :start_time
      t.integer :end_time
      t.integer :doctor_id

      t.timestamps
    end
  end
end
