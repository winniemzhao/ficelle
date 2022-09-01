class UsersController < ApplicationController
  def us
    @quote = [
      "“Love is a game that two can play and both win.”",
      "“No road is long with good company.”",
      "“The first duty of love is to listen.”",
      "“Love is a two-way street constantly under construction.”",
      "“A true relationship is two unperfect people refusing to give up on each other.”",
      "“Happily ever after is not a fairy tale. It is a choice.”"
    ].sample
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
