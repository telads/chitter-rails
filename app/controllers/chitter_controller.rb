class ChitterController < ApplicationController
  def index
    if session[:current_user_id]
      render :index
    else
      redirect_to '/sign-up'
    end
  end

  def peeps
    thirdpeep = Peep.new(username: "Katerina", peep: params[:neep])
    thirdpeep.save
    # p @message = params[:neep]
    @peeps = Peep.order(created_at: :desc)

  end
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
