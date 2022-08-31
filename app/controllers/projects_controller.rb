class ProjectsController < ApplicationController
  def index
    @projects = Project.all  #  à changer
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @user = current_user
    @project = Project.new(project_params)
    if @project.save
      redirect_to selection_freelancers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :answers)
  end
end
