class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def address_compact(address_1, address_2, city, state, zip_code)
  # 	full_address = [address_1, address_2, city, state, zip_zode].compact
  # 	short_address = full_address.reject(&:empty?).join(' ')
  # end

	def after_sign_in_path_for(user)
	  if current_user.sign_in_count == 1
	    new_company_path
    else
      customers_path
	  end
	end

end