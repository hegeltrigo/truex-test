class Api::V1::OptionTypesController < ApplicationController
  before_action :set_option_type, only: [:show, :update, :destroy]

  # GET /option_types
  def index
    @option_types = OptionType.all

    render json: @option_types
  end

  # GET /option_types/1
  def show
    render json: @option_type
  end

  # POST /option_types
  def create
    @option_type = OptionType.new(option_type_params)

    if @option_type.save
      render json: @option_type, status: :created
    else
      render json: @option_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /option_types/1
  def update
    if @option_type.update(option_type_params)
      render json: @option_type
    else
      render json: @option_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /option_types/1
  def destroy
    @option_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_type
      @option_type = OptionType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def option_type_params
      params.require(:option_type).permit(:name, :description)
    end
end
