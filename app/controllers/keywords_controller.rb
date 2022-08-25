class KeywordsController < ApplicationController
  def index
    @partner = current_user.partner
    @keywords = @partner.keywords.all
  end
end
