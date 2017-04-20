class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def post_params(*args) #little more abstract, no need to put in every model and include :symbol
    params.require(self.class.to_s[0..-12].downcase.to_sym).permit(*args)
    #params.require(self.class.to_s.chomp("sController").to_sym).permit(*args)
  end

end
