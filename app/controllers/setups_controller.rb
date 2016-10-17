class SetupsController < ApplicationController
  before_action :set_setup, only: [:show, :update, :destroy]

  # GET /setups
  def index
    @setups = Setup.all

    render json: @setups
  end

  # GET /setups/1
  def show
    render json: @setup
  end

  # POST /setups
  def create
    @setup = Setup.new(setup_params)

    if @setup.save
      render json: @setup, status: :created, location: @setup
    else
      render json: @setup.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /setups/1
  def update
    if @setup.update(setup_params)
      render json: @setup
    else
      render json: @setup.errors, status: :unprocessable_entity
    end
  end

  # DELETE /setups/1
  def destroy
    @setup.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setup
      @setup = Setup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def setup_params
      params.require(:setup).permit(:name, :description, :active, :user_id)
    end
end
