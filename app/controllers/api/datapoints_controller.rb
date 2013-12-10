class API::DatapointsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @datapoints = Datapoint.all
    respond_to do |format|
      format.json { render :json => @datapoints }
    end
  end

  def show
  	@datapoint = Datapoint.find(params[:id])
    respond_to do |format|
      format.json { render :json => @datapoint }
    end
  end

  def create
    @new_datapoint = Datapoint.new(datapoint_params)

    respond_to do |format|
      if @new_datapoint.save
        format.json { render :json => @new_datapoint }
      else
        format.json { render json: @new_datapoint.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def datapoint_params
      params.require(:datapoint).permit(:value, :property_id, :device_id)
    end

end
