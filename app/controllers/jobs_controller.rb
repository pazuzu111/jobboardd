class JobsController < ApplicationController
  #before anything call the finjob method to find a job fro show, edit, update and destroy
  before_action :findJob, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(jobParams)

    if @job.save
      #add to db and redirect to that new job
      redirect_to @job
    else
      #render new page
      :new
    end
  end

  def update
    if @job.update(jobParams)
      redirect_to @job
    else
      :edit
    end
  end

  def destroy
    @job.destroy
    redirect_to root_path
  end

  def show
  end

  def edit
  end

private
  def jobParams
    params.require(:job).permit(:title,:company,:about,:url)
  end

  def findJob
    @job = Job.find(params[:id])
  end

end
