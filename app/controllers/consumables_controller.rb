class ConsumablesController < ApplicationController
  before_action :set_consumable, only: %i[ show update destroy ]

  # GET /consumables
  def index
    @consumables = Consumable.all

    render json: @consumables
  end

  # GET /consumables/1
  def show
    consumable = Consumable.find(params[:id])
    render json: consumable
  end

  # POST /consumables
  def create
    consumable = Consumable.new(name: params[:name], qty: params[:qty], brand: params[:brand], link: params[:link], tool_id: params[:tool_id])
    if consumable.save
      render json: consumable, status: :created
    else
      render json: consumable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /consumables/1
  def update
    consumable = Consumable.find(params[:id])
    consumable.update(name: params[:name], qty: params[:qty], brand: params[:brand], link: params[:link], tool_id: params[:tool_id])
      if consumable.save
        render json: consumable, status: :created
      else
        render json: consumable.errors, status: :unprocessable_entity
      end
  end

  # DELETE /consumables/1
  def destroy
    Consumable.find(params[:id]).destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consumable
      @consumable = Consumable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consumable_params
      params.require(:consumable).permit(:name, :qty, :link, :brand)
    end
end
