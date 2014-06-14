class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def address_compact(address_1, address_2, city, state, zip_code)
  # 	full_address = [address_1, address_2, city, state, zip_zode].compact
  # 	short_address = full_address.reject(&:empty?).join(' ')
  # end

  # around_filter :user_time_zone, if: :current_user

end