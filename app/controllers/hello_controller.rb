class HelloController < ApplicationController
  layout :admin_or_user
  
  def index
    @message="Hello!"
    @count=3
    @bonus="This message came from the controller."
  end
  
  private
  def admin_or_user
    if admin_authenticated
      "admin_screen"
    else
      "user_screen"
    end
  end
  
end
