class ChitterController < ApplicationController
  def index

  end

  def peeps
    p @message = params[:peep]
    @peeps = Peep.all

  end
end
