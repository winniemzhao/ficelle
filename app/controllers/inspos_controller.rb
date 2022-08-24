class InsposController < ApplicationController
  def index
    @inspos = Inspo.all
  end

  def edit
    @inspo = Inspo.find(params[:id])
  end
end
