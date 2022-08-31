class ProjectsController < ApplicationController
  def index
    user = current_user
    year_exp = Date.today - user.batch_date
    user.score_exp = (year_exp * 5) + (user.number_of_projects * 2) + user.skill.size
    if user.score_exp <= 33
      @projects = Project.where(score_difficulty: 1)
    elsif user.score_exp > 33 && user.score_exp <= 66
      @projects = Project.where(score_difficulty: 2..3)
    elsif user.score_exp > 66
      @projects = Project.where(score_difficulty: 4)
    end
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

    if @project.answers.include?('one page' || 'vitrine')
      @project.score_difficulty = 1
    elsif @project.answers.include?('eshop under 10 items')
      @project.score_difficulty = 2
    elsif @project.answers.include?('eshop over 10 items')
      @project.score_difficulty = 3
    elsif @project.answers.include?('webapp')
      @project.score_difficulty = 4
    end

    if @project.save
      redirect_to selectionfreelancers_path
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
