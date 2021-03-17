class ChitterController < ApplicationController
  def index

  end

  def peeps
    thirdpeep = Peep.new(username: "Katerina", peep: params[:neep])
    thirdpeep.save
    # p @message = params[:neep]
    @peeps = Peep.order(created_at: :desc)

    # def new
    #   @peeps = Peep.new
    # end
    #
    # def create
    #   @peep = Peep.new(username: "", peep: "...")
    #   if @peep.save
    #     redirect_to @peep
    #   else
    #     render :new
    #   end
    # end

  end
end
