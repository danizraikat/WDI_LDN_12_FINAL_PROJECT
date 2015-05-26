class LevelPlaysController < ApplicationController
  before_action :set_level_play, only: [:show, :edit, :update, :destroy]

  # GET /level_plays
  # GET /level_plays.json
  def index
    @level_plays = LevelPlay.all
  end

  # GET /level_plays/1
  # GET /level_plays/1.json
  def show
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
    @level_play = LevelPlay.new(level_play_params)

    respond_to do |format|
      if @level_play.save
        format.html { redirect_to @level_play, notice: 'Level play was successfully created.' }
        format.json { render :show, status: :created, location: @level_play }
      else
        format.html { render :new }
        format.json { render json: @level_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /level_plays/1
  # PATCH/PUT /level_plays/1.json
  def update
    respond_to do |format|
      if @level_play.update(level_play_params)
        format.html { redirect_to @level_play, notice: 'Level play was successfully updated.' }
        format.json { render :show, status: :ok, location: @level_play }
      else
        format.html { render :edit }
        format.json { render json: @level_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /level_plays/1
  # DELETE /level_plays/1.json
  def destroy
    @level_play.destroy
    respond_to do |format|
      format.html { redirect_to level_plays_url, notice: 'Level play was successfully destroyed.' }
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
