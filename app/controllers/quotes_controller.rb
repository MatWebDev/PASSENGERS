class QuotesController < ApplicationController
  def show
    @quote = Quote.find(params[:id])
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)
    @quote.user = current_user
    if @quote.save!
      redirect_to dashboard_path, notice: "Your quote was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
    redirect_to dashboard_path, status: :see_other
  end
end
