class KeywordsController < ApplicationController
  def index
    @partner = current_user.partner unless current_user.partner.nil?
    @keywords = Keyword.all
  end
end
