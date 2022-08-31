class ProjectsController < ApplicationController
  def index

  end

  def show

  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def project_params
    params.require(:project).permit()
  end
end
