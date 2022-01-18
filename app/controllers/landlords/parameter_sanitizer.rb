class Landlord::ParameterSanitizer < Devise::ParameterSanitizer
    def initialize(*)
      super
      permit(:sign_up, keys: [:username, :email, :landlord_type, :first_name, :last_name, :company_name, :phone_number, :website, :street_address, :city, :state_id, :country_id, :zip_code])
      permit(:account_update, keys: [:username, :email, :landlord_type, :first_name, :last_name, :company_name, :phone_number, :website, :street_address, :city, :state_id, :country_id, :zip_code])
    end
  end