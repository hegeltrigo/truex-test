class Api::V1::DishTypesController < ApplicationController
  before_action :set_dish_type, only: [:show, :update, :destroy]

  # GET /dish_types
  def index
    @dish_types = DishType.all

    render json: @dish_types
  end

  # GET /dish_types/1
  def show
    render json: @dish_type
  end

  # POST /dish_types
  def create
    @dish_type = DishType.new(dish_type_params)

    if @dish_type.save
      render json: @dish_type, status: :created
    else
      render json: @dish_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dish_types/1
  def update
    if @dish_type.update(dish_type_params)
      render json: @dish_type
    else
      render json: @dish_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dish_types/1
  def destroy
    @dish_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_type
      @dish_type = DishType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dish_type_params
      params.require(:dish_type).permit(:name, :description)
    end
end
