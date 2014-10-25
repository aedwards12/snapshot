class WelcomeController < ActionController::Base
  
  def index
  	@user = User.find(current_user.id)
  end
  
end