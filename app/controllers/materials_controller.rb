class MaterialsController < ApplicationController
  before_action :set_material, only: %i[ show update destroy ]

  # GET /materials
  def index
    @materials = Material.all

    render json: @materials
  end

  # GET /materials/1
  def show
    material = Material.find(params[:id])
    render json: material
  end

  # POST /materials
  def create
    material = Material.new(metal: params[:metal], qty: params[:qty], dimension: params[:dimension], link: params[:link])

    if material.save
      render json: material, status: :created
    else
      render json: material.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /materials/1
  def update
    if @material.update(material_params)
      render json: @material
    else
      render json: @material.errors, status: :unprocessable_entity
    end
  end

  # DELETE /materials/1
  def destroy
    @material.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = Material.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def material_params
      params.require(:material).permit(:metal, :qty, :dimension, :link)
    end
end
