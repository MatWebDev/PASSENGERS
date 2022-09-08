class ProjectsController < ApplicationController
  def index
    @user = current_user
    @user.score_exp = (@user.year_exp * 7) + (@user.number_of_projects * 2)
    if @user.score_exp <= 33
      @projects = Project.where(score_difficulty: 1..2)
    elsif @user.score_exp > 33 && @user.score_exp <= 66
      @projects = Project.where(score_difficulty: 2..3)
    elsif @user.score_exp > 66
      @projects = Project.where(score_difficulty: 4)
    end
  end

  def show
    @chatroom = Chatroom.create!(name: 'Chatroom test')
    @project = Project.find(params[:id])
    @collaborations = Collaboration.where(project_id: @project.id)
    # a verifier
    freelancers = User.where(role: 'freelancer')
    @junior_freelancers = []
    @intermediate_freelancers = []
    @senior_freelancers = []
    @junior_intermediate_freelancers = []

    freelancers.each do |freelancer|
      if freelancer.score_exp <= 33
        @junior_freelancers << freelancer
        @junior_intermediate_freelancers << freelancer
      elsif freelancer.score_exp > 33 && freelancer.score_exp <= 66
        @intermediate_freelancers << freelancer
        @junior_intermediate_freelancers << freelancer
      elsif freelancer.score_exp > 66
        @senior_freelancers << freelancer
      end
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id

    case @project.website
    when 'One Page', 'Vitrine'
      @project.score_difficulty = 1
    when 'E-shop under 10 items'
      @project.score_difficulty = 2
    when 'E-shop over 10 items'
      @project.score_difficulty = 3
    when 'WebApp'
      @project.score_difficulty = 4
    end

    if @project.save
      redirect_to project_path(@project)
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
    params.require(:project).permit(:title, :description, :user_id, :origin, :website, :score_difficulty)
  end
end
