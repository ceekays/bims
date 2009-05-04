require 'test_helper'

class PageContentsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:page_contents)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_page_content
    assert_difference('PageContent.count') do
      post :create, :page_content => { }
    end

    assert_redirected_to page_content_path(assigns(:page_content))
  end

  def test_should_show_page_content
    get :show, :id => page_contents(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => page_contents(:one).id
    assert_response :success
  end

  def test_should_update_page_content
    put :update, :id => page_contents(:one).id, :page_content => { }
    assert_redirected_to page_content_path(assigns(:page_content))
  end

  def test_should_destroy_page_content
    assert_difference('PageContent.count', -1) do
      delete :destroy, :id => page_contents(:one).id
    end

    assert_redirected_to page_contents_path
  end
end
