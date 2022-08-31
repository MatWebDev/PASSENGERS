class CollaborationsController < ApplicationController
  def create
    @user = current_user
    @projet = Project.find(params[:project_id])
    
    @collaboration = Collaboration.new(collaboration_params)
    if @collaboration.save
      redirect_to dashboard_path
    else
      render quote_path(quote)
    end

  end

  private


end
