class UsersController < ApplicationController
  def us
  end

  def setting
  end

  def edit
    current_user
  end

  def update
    current_user.update(user_params)
    redirect_to setting_path
  end

  private

  def user_params
    params.require(:user).permit(:budget, :event_frequency)
  end
end
