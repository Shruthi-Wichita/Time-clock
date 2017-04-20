class EntrypointController < ApplicationController
  def index
    if authenticate_user!
      if current_user.admin?
        redirect_to '/manager/home'
      else
        redirect_to '/employee/home'
      end
    else
        redirect_to '/users/sign_in'
    end
  end
end
