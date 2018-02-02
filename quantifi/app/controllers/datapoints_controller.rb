class DatapointsController < ApplicationController
	def create
	  @experiment = Experiment.find(params[:experiment_id])
	  @datapoint = @experiment.datapoints.create(datapoint_params)
	  redirect_to experiment_path(@experiment)
    end
	 
    private
      def datapoint_params
	    params.require(:datapoint).permit(:value, :measured_at)
	  end
end
