class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :next_vet_appt
      t.string :date
      t.string :vet_notes
      t.string :text
      t.string :Next_Farrier_appt
      t.string :date
      t.string :farrier_notes
      t.string :text
      t.string :Chiropractor_appt
      t.string :date
      t.string :Chiropractor_notes
      t.string :text
      t.string :Dentist_Appt
      t.string :date
      t.string :Dentist_Notes
      t.string :text
      t.string :Next_Message_Appt
      t.string :date
      t.string :Massage_Notes
      t.string :text

      t.timestamps null: false
    end
  end
end
