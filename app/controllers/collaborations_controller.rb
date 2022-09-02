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
    params.require(:collaboration).permit(:status, :title, :total_price, :project_id)
  end
end
