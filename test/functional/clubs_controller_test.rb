require File.dirname(__FILE__) + '/../test_helper'

class ClubsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:clubs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_club
    assert_difference('Club.count') do
      post :create, :club => { }
    end

    assert_redirected_to club_path(assigns(:club))
  end

  def test_should_show_club
    get :show, :id => clubs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => clubs(:one).id
    assert_response :success
  end

  def test_should_update_club
    put :update, :id => clubs(:one).id, :club => { }
    assert_redirected_to club_path(assigns(:club))
  end

  def test_should_destroy_club
    assert_difference('Club.count', -1) do
      delete :destroy, :id => clubs(:one).id
    end

    assert_redirected_to clubs_path
  end
end
