require 'test_helper'

class AppointmentsControllerTest < ActionController::TestCase
  setup do
    @appointment = appointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appointment" do
    assert_difference('Appointment.count') do
      post :create, appointment: { Chiropractor_appt: @appointment.Chiropractor_appt, Chiropractor_notes: @appointment.Chiropractor_notes, Dentist_Appt: @appointment.Dentist_Appt, Dentist_Notes: @appointment.Dentist_Notes, Massage_Notes: @appointment.Massage_Notes, Next_Farrier_appt: @appointment.Next_Farrier_appt, Next_Message_Appt: @appointment.Next_Message_Appt, date: @appointment.date, date: @appointment.date, date: @appointment.date, date: @appointment.date, date: @appointment.date, farrier_notes: @appointment.farrier_notes, next_vet_appt: @appointment.next_vet_appt, text: @appointment.text, text: @appointment.text, text: @appointment.text, text: @appointment.text, text: @appointment.text, vet_notes: @appointment.vet_notes }
    end

    assert_redirected_to appointment_path(assigns(:appointment))
  end

  test "should show appointment" do
    get :show, id: @appointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appointment
    assert_response :success
  end

  test "should update appointment" do
    patch :update, id: @appointment, appointment: { Chiropractor_appt: @appointment.Chiropractor_appt, Chiropractor_notes: @appointment.Chiropractor_notes, Dentist_Appt: @appointment.Dentist_Appt, Dentist_Notes: @appointment.Dentist_Notes, Massage_Notes: @appointment.Massage_Notes, Next_Farrier_appt: @appointment.Next_Farrier_appt, Next_Message_Appt: @appointment.Next_Message_Appt, date: @appointment.date, date: @appointment.date, date: @appointment.date, date: @appointment.date, date: @appointment.date, farrier_notes: @appointment.farrier_notes, next_vet_appt: @appointment.next_vet_appt, text: @appointment.text, text: @appointment.text, text: @appointment.text, text: @appointment.text, text: @appointment.text, vet_notes: @appointment.vet_notes }
    assert_redirected_to appointment_path(assigns(:appointment))
  end

  test "should destroy appointment" do
    assert_difference('Appointment.count', -1) do
      delete :destroy, id: @appointment
    end

    assert_redirected_to appointments_path
  end
end
