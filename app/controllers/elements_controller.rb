class ElementsController < ApplicationController
  def create
    @quote = Quote.find(params[:quote_id])
    @element = Element.new
    if @element.save
      redirect_to quote_path(@quote)
    else
      render new_quote_path, status: :unprocessable_entity
    end
  end

  def destroy
    @element.find(params[:id])
    @element.destroy
    redirect_to quote_path(@quote), status: :see_other
  end
end
