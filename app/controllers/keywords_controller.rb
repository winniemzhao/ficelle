class KeywordsController < ApplicationController
  def index
    @partner = Partner.find(params[:partner_id])
    @keywords = @partner.keywords.all
  end
end
