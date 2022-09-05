class CollaborationsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @collaboration = Collaboration.new
  end

  def create
    @project = Project.find(params[:project_id])
    @collaboration = Collaboration.new(params_collaboration)
    @collaboration.project = @project
    @collaboration.user_id = current_user.id
    if @collaboration.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @project = Project.find(params[:project_id])
    @collaboration = Collaboration.find(params[:id])
    @collaboration.update(status: 'accepted')
    redirect_to root_path
  end

  private

  def params_collaboration
    params.require(:collaboration).permit(:status, :title, :total_price, :project_id)
  end
end
