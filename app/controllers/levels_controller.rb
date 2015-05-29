class LevelsController < ApplicationController
  before_action :set_level, only: [:show, :update, :destroy]

  def index
    @levels = Level.all
    render json: @levels, root: false
  end

  def show
    render json: @level, root: false
  end

  def create
    @level = Level.new(level_params)
    respond_to do |format|
      if @level.save
        format.json { render json: @level, root: false, status: :created, location: @level }
      else
        format.json { render json: @level.errors, root: false, status: :unprocessable_entity }
      end
    en
  end

  def update
    respond_to do |format|
      if @level.update(level_params)
        format.json { render json: @level, root: false, status: :ok, location: @level }
      else
        format.json { render json: @level.errors, root: false, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @level.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    def set_level
      @level = Level.find(params[:id])
    end

    def level_params
      params.require(:level).permit(:image, :name, :brief)
    end
end
