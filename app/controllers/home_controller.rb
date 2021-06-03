class HomeController < ApplicationController
  def index
    @jobs = Job.all
    @areas = JobArea.all
  end
end
