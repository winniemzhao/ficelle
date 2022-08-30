class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user && current_user.partner
      @path = dashboard_path
      @message = 'Go to dashboard'
    elsif current_user
      @path = new_partner_path
      @message = 'Create a partner'
    else
      @path = user_session_path
      @message = 'Get started'
    end
  end
end
