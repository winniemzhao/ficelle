class InsposController < ApplicationController
  def index
    @inspos = Inspo.all
  end
end
