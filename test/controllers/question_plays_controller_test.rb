require 'test_helper'

class QuestionPlaysControllerTest < ActionController::TestCase
  setup do
    @question_play = question_plays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_plays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_play" do
    assert_difference('QuestionPlay.count') do
      post :create, question_play: { answer_id: @question_play.answer_id, level_play_id: @question_play.level_play_id, question_id: @question_play.question_id, score: @question_play.score, user_id: @question_play.user_id }
    end

    assert_redirected_to question_play_path(assigns(:question_play))
  end

  test "should show question_play" do
    get :show, id: @question_play
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_play
    assert_response :success
  end

  test "should update question_play" do
    patch :update, id: @question_play, question_play: { answer_id: @question_play.answer_id, level_play_id: @question_play.level_play_id, question_id: @question_play.question_id, score: @question_play.score, user_id: @question_play.user_id }
    assert_redirected_to question_play_path(assigns(:question_play))
  end

  test "should destroy question_play" do
    assert_difference('QuestionPlay.count', -1) do
      delete :destroy, id: @question_play
    end

    assert_redirected_to question_plays_path
  end
end
