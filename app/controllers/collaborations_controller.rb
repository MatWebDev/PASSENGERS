class CollaborationsController < ApplicationController
  def new
    @user = current_user
    @project = Project.find(params[:project_id])
    @collaboration = Collaboration.new
  end

  def create
    @user = current_user
    @collaboration = Collaboration.new(params_collaboration)
    @project = @collaboration.project
    if @collaboration.save
      redirect_to dashboard_path
    else
      render project_path(@project), status: :unprocessable_entity
    end
  end

  def update
    @collaboration = Collaboration.find(params[:id])
    case params[:status]
    when 'accepted'
      @collaboration.update(status: 'accepted')
    when 'declined'
      @collaboration.update(status: 'declined')
    end
    redirect_to dashboard_path
  end

  private

  def params_collaboration
    params.require(:collaboration).permit(:status, :title, :total_price)
  end
end
