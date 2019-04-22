class ApplicationController < ActionController::Base
  before_action :set_locale, :configure_permitted_parameters, if: :devise_controller?

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :surname, :date_birthday, :city_birthday, :address, :department_id, :start_work, :position_id, :avatar])
  end
end
