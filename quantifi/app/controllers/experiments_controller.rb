class ExperimentsController < ApplicationController

	def index
        @active_experiments = Experiment.where(completed: false)
        @inactive_experiments = Experiment.where(completed: true)
	end

	def show
    	@experiment = Experiment.find(params[:id])
  	end

    def graph
        #@experiment = Experiment.find(params[:id])
    end

	def new
		@experiment = Experiment.new
  	end

  	def create
  		@experiment = Experiment.new(experiment_params)
 
		if @experiment.save
			redirect_to @experiment
  		else
    		render 'new'
  		end
  	end

	def edit
        @experiment = Experiment.find(params[:id])
	end
  	def update
	  @experiment = Experiment.find(params[:id])
	 
	  if @experiment.update(experiment_params)
	    redirect_to @experiment
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @experiment = Experiment.find(params[:id])
	  @experiment.destroy
	 
	  redirect_to experiments_path
	end

  	private
	  def experiment_params
	    params.require(:experiment).permit(:name, :description, :completed)
	  end
end
