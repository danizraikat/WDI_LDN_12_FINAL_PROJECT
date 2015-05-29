class TestsController < ApplicationController
  before_action :set_test, only: [:show, :update, :destroy]

  def index
    @tests = Test.all
    render json: @tests, root: false
  end

  def show
    render json: @test, root: false
  end

  def create
    @test = Test.new(test_params)
    respond_to do |format|
      if @test.save
        format.json { render json: @test, root: false, status: :created, location: @test }
      else
        format.json { render json: @test.errors, root: false, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @test.update(test_params)
        format.json { render json: @test, root: false, status: :ok, location: @test }
      else
        format.json { render json: @test.errors, root: false, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @test.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    def set_test
      @test = Test.find(params[:id])
    end

    def test_params
      params.require(:test).permit(:image, :name, :brief)
    end
end
