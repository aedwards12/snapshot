class WelcomeController < ActionController::Base
  
  def index
  	if current_user
  	  @user = User.find(current_user.id)
    end
  end
end