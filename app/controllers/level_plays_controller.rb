class LevelPlaysController < ApplicationController
  before_action :set_level_play, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create]

  # GET /level_plays
  # GET /level_plays.json
  def index
    @level_plays = LevelPlay.all
    render json: @level_plays, root: false 
  end

  # GET /level_plays/1
  # GET /level_plays/1.json
  def show
    render json: @level_play, root: false 
  end

  # GET /level_plays/new
  def new
    @level_play = LevelPlay.new
  end

  # GET /level_plays/1/edit
  def edit
  end

  # POST /level_plays
  # POST /level_plays.json
  def create
    @level_play = current_user.level_plays.new(level_play_params)

    respond_to do |format|
      if @level_play.save
        format.json { render json: @level_play, root: false, status: :created, location: @level_play }
      else
        format.json { render json: @level_play.errors, root: false,  status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /level_plays/1
  # PATCH/PUT /level_plays/1.json
  def update
    respond_to do |format|
      if @level_play.update(level_play_params)
        format.json { render json: @level_play, root: false, status: :ok, location: @level_play }
      else
        format.json { render json: @level_play.errors, root: false, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /level_plays/1
  # DELETE /level_plays/1.json
  def destroy
    @level_play.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level_play
      @level_play = LevelPlay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def level_play_params
      params.require(:level_play).permit(:user_id, :level_id, :max_score, :score)
    end
end
