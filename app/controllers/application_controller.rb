require 'landlords/parameter_sanitizer'

class ApplicationController < ActionController::Base
    before_action :devise_parameter_sanitizer, if: :devise_controller?

    protected
  
    def devise_parameter_sanitizer
        if resource_class == Landlord
          Landlord::ParameterSanitizer.new(Landlord, :landlord, params)
        else
          super # Use the default one
        end
      end
end
