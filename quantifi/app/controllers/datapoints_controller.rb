class DatapointsController < ApplicationController
	def create
      @user = User.find(params[:user_id])
	  @experiment = @user.experiments.find(params[:experiment_id])
	  @datapoint = @experiment.datapoints.create(datapoint_params)
	  redirect_to user_experiment_path(@user, @experiment)
    end

    def destroy
	  @user = User.find(params[:user_id])
      @experiment = @user.experiments.find(params[:experiment_id])
      @datapoint = @experiment.datapoints.find(params[:id])
      @datapoint.destroy
      redirect_to user_experiment_path(@user, @experiment)
	end

	def edit
      @user = User.find(params[:user_id])
      @experiment = @user.experiments.find(params[:experiment_id])
      @datapoint = @experiment.datapoints.find(params[:id])
	end

  	def update
	  @user = User.find(params[:user_id])
      @experiment = @user.experiments.find(params[:experiment_id])
      @datapoint = @experiment.datapoints.find(params[:id])
	 
	  if @datapoint.update(datapoint_params)
	    redirect_to user_experiment_path(@user)
	  else
	    render 'edit'
	  end
	end
	 
    private
      def datapoint_params
	    params.require(:datapoint).permit(:value, :measured_at)
	  end
end
