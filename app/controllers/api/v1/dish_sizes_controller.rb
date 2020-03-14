class Api::V1::DishSizesController < ApplicationController
  before_action :set_dish_size, only: [:show, :update, :destroy]

  # GET /dish_sizes
  def index
    @dish_sizes = DishSize.all

    render json: @dish_sizes
  end

  # GET /dish_sizes/1
  def show
    render json: @dish_size
  end

  # POST /dish_sizes
  def create
    @dish_size = DishSize.new(dish_size_params)

    if @dish_size.save
      render json: @dish_size, status: :created
    else
      render json: @dish_size.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dish_sizes/1
  def update
    if @dish_size.update(dish_size_params)
      render json: @dish_size
    else
      render json: @dish_size.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dish_sizes/1
  def destroy
    @dish_size.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_size
      @dish_size = DishSize.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dish_size_params
      params.require(:dish_size).permit(:name, :description)
    end
end
