require 'test_helper'

class LevelPlaysControllerTest < ActionController::TestCase
  setup do
    @level_play = level_plays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:level_plays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create level_play" do
    assert_difference('LevelPlay.count') do
      post :create, level_play: { level_id: @level_play.level_id, max_score: @level_play.max_score, score: @level_play.score, user_id: @level_play.user_id }
    end

    assert_redirected_to level_play_path(assigns(:level_play))
  end

  test "should show level_play" do
    get :show, id: @level_play
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @level_play
    assert_response :success
  end

  test "should update level_play" do
    patch :update, id: @level_play, level_play: { level_id: @level_play.level_id, max_score: @level_play.max_score, score: @level_play.score, user_id: @level_play.user_id }
    assert_redirected_to level_play_path(assigns(:level_play))
  end

  test "should destroy level_play" do
    assert_difference('LevelPlay.count', -1) do
      delete :destroy, id: @level_play
    end

    assert_redirected_to level_plays_path
  end
end
