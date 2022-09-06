class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :address, :company_name, :role, :siret, :description, :number_of_projects, :phone_number, :skills, :year_exp, :photo])
  end
end
