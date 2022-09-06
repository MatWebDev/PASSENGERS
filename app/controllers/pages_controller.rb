class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def index
  end

  def home
  end

  def dashboard
    @collaborations = Collaboration.where(user_id: current_user.id)
    @projects = Project.where(user_id: current_user.id)
  end
end
