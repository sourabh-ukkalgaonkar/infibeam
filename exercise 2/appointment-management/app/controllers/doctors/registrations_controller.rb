class Doctors::RegistrationsController < Devise::RegistrationsController

  protected

  def sign_up_params
    params.require(:doctor).permit(:first_name, :last_name, :gender, :email, :password, :password_confirmation)
  end
end