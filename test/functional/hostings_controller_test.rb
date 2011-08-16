require 'test_helper'

class HostingsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Hosting.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Hosting.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Hosting.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to hosting_url(assigns(:hosting))
  end

  def test_edit
    get :edit, :id => Hosting.first
    assert_template 'edit'
  end

  def test_update_invalid
    Hosting.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Hosting.first
    assert_template 'edit'
  end

  def test_update_valid
    Hosting.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Hosting.first
    assert_redirected_to hosting_url(assigns(:hosting))
  end

  def test_destroy
    hosting = Hosting.first
    delete :destroy, :id => hosting
    assert_redirected_to hostings_url
    assert !Hosting.exists?(hosting.id)
  end
end
