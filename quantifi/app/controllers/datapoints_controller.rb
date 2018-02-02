class DatapointsController < ApplicationController
	def create
	  @experiment = Experiment.find(params[:experiment_id])
	  @datapoint = @experiment.datapoints.create(datapoint_params)
	  redirect_to experiment_path(@experiment)
    end

    def destroy
	  @experiment = Experiment.find(params[:experiment_id])
      @datapoint = @experiment.datapoints.find(params[:id])
      @datapoint.destroy
      redirect_to experiment_path(@experiment)
	end

	def edit
    	@experiment = Experiment.find(params[:experiment_id])
        @datapoint = @experiment.datapoints.find(params[:id])
	end

  	def update
	  @experiment = Experiment.find(params[:experiment_id])
      @datapoint = @experiment.datapoints.find(params[:id])
	 
	  if @datapoint.update(datapoint_params)
	    redirect_to @datapoint.experiment
	  else
	    render 'edit'
	  end
	end
	 
    private
      def datapoint_params
	    params.require(:datapoint).permit(:value, :measured_at)
	  end
end
