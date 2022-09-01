class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
  end

  # def selectionfreelancers
  #   @project = current_user.project
  #   freelancers = User.where(role: 'freelancer')
  #   @junior_freelancers = []
  #   @intermediate_freelancers = []
  #   @senior_freelancers = []
  #   @junior_intermediate_freelancers = []

  #   freelancers.each do |freelancer|
  #     if freelancer.score_exp <= 33
  #       @junior_freelancers << freelancer
  #       @junior_intermediate_freelancers << freelancer
  #     elsif freelancer.score_exp > 33 && freelancer.score_exp <= 66
  #       @intermediate_freelancers << freelancer
  #       @junior_intermediate_freelancers << freelancer
  #     elsif freelancer.score_exp > 66
  #       @senior_freelancers << freelancer
  #     end
  #   end
  # end
end
