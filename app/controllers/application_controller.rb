class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
    def get_params(model_key, *attributes)
      params.require(model_key).permit(attributes)
    end
end
