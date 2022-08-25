class KeywordsController < ApplicationController
  def index
    @partner = current_user.partner
    @keywords = Keyword.all
  end
end
