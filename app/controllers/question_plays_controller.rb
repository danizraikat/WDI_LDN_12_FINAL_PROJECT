class QuestionPlaysController < ApplicationController
  before_action :set_question_play, only: [:show, :edit, :update, :destroy]

  # GET /question_plays
  # GET /question_plays.json
  def index
    @question_plays = QuestionPlay.all
  end

  # GET /question_plays/1
  # GET /question_plays/1.json
  def show
  end

  # GET /question_plays/new
  def new
    @question_play = QuestionPlay.new
  end

  # GET /question_plays/1/edit
  def edit
  end

  # POST /question_plays
  # POST /question_plays.json
  def create
    @question_play = QuestionPlay.new(question_play_params)

    respond_to do |format|
      if @question_play.save
        format.html { redirect_to @question_play, notice: 'Question play was successfully created.' }
        format.json { render :show, status: :created, location: @question_play }
      else
        format.html { render :new }
        format.json { render json: @question_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_plays/1
  # PATCH/PUT /question_plays/1.json
  def update
    respond_to do |format|
      if @question_play.update(question_play_params)
        format.html { redirect_to @question_play, notice: 'Question play was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_play }
      else
        format.html { render :edit }
        format.json { render json: @question_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_plays/1
  # DELETE /question_plays/1.json
  def destroy
    @question_play.destroy
    respond_to do |format|
      format.html { redirect_to question_plays_url, notice: 'Question play was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_play
      @question_play = QuestionPlay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_play_params
      params.require(:question_play).permit(:user_id, :question_id, :answer_id, :level_play_id, :score)
    end
end
