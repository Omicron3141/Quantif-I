class ExperimentsController < ApplicationController

	def index
      @user = User.find(params[:user_id])
      @active_experiments = @user.experiments.where(completed: false)
      @inactive_experiments = @user.experiments.where(completed: true)
	end

	def show
      @user = User.find(params[:user_id])
      @experiment = @user.experiments.find(params[:id])
  	end

	def new
      @user = User.find(params[:user_id])
	  @experiment = @user.experiments.new
  	end

  	def create
      @user = User.find(params[:user_id])
  	  @experiment = @user.experiments.create(experiment_params)

	  if @experiment.save
		redirect_to user_experiment_path(@user, @experiment)
  	  else
    	render 'new'
  	  end
  	end

	def edit
      @user = User.find(params[:user_id])
      @experiment = @user.experiments.find(params[:id])
	end

  	def update
      @user = User.find(params[:user_id])
	  @experiment = @user.experiments.find(params[:id])

	  if @experiment.update(experiment_params)
	    redirect_to @experiment.user
	  else
	    render 'edit'
	  end
	end

	def destroy
      @user = User.find(params[:user_id])
	  @experiment = @user.experiments.find(params[:id])
	  @experiment.destroy
	  redirect_to user_path(@user)
	end

  	private
	  def experiment_params
	    params.require(:experiment).permit(:name, :description, :completed)
	  end
end
