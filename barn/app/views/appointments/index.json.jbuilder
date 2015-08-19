json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :next_vet_appt, :date, :vet_notes, :text, :Next_Farrier_appt, :date, :farrier_notes, :text, :Chiropractor_appt, :date, :Chiropractor_notes, :text, :Dentist_Appt, :date, :Dentist_Notes, :text, :Next_Message_Appt, :date, :Massage_Notes, :text
  json.url appointment_url(appointment, format: :json)
end
