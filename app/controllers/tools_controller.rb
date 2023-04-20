class ToolsController < ApplicationController
  def index
    render json: Tool.includes(:consumables).all
  end
  
  def show
    tool = Tool.includes(:consumables).find(params[:id])
    render json: tool
  end
  
  def create
   tool = Tool.new(name: params[:name], qty: params[:qty], brand: params[:brand], link: params[:link])
    if tool.save
      render json: tool, status: :created
    else
      render json: tool.errors, status: :unprocessable_entity
    end
  end
  
  def update
    tool = Tool.find(params[:id])
    tool.update(name: params[:name], qty: params[:qty], brand: params[:brand], link: params[:link])
    
    render json: tool
    
  end
  def destroy
    Tool.find(params[:id]).destroy!
    
    head :no_content
  end
  private
  
  def tool_params
    params.require(:tool).permit(:name, :qty, :brand, :link)
  end
end
